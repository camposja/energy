class DropFilesTable < ActiveRecord::Migration[7.2]
  def change
    drop_table :files do |t|
      t.binary :content
      t.text :metadata
    end
  end
end
