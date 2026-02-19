# frozen_string_literal: true

require 'shrine'
require 'shrine/storage/file_system'

# File system storage — images are served directly from public/
# Cache: temporary location during upload
# Store: permanent location after processing
Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
  store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads')
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
