class RenameColumn < ActiveRecord::Migration[5.2]
  def change

    if Book.attribute_names.include? "publishername"
    rename_column :books, :publishername, :publisher
  end
  end
end
