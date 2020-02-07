class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date
      t.string :identifier
      t.string :publishername

      t.timestamps
    end
  end
end
