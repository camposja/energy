# frozen_string_literal: true

require 'image_processing/mini_magick'

class ImageUploader < Shrine
  # plugins and uploading logic
  include ImageUploader[:image]

  include ImageProcessing::MiniMagick
  plugin :processing
  plugin :versions   # enable Shrine to handle a hash of files
  plugin :delete_raw # delete processed files after uploading

  process(:store) do |io, _context|
    original = io.download

    # width, height
    size_800 = resize_and_pad(original, 800, 600, &:auto_orient) # orient rotated images
    size_500 = resize_and_pad(size_800, 500, 375)
    size_300 = resize_and_pad(size_500, 300, 225)
    size_64  = resize_and_pad(size_300, 64, 48)

    {
      original: io,
      large: size_800,
      medium: size_500,
      small: size_300,
      thumbnail: size_64
    }
  end
end
