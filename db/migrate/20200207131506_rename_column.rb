class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :PublisherName, :publisher
  end
end
