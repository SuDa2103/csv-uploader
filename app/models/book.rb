class Book < ApplicationRecord
  def self.import(file)
    unless file.nil?
      CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
        puts row.to_hash
        Book.create! row.to_hash
      end
    end
  end
end
