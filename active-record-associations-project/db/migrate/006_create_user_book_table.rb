class CreateUserBookTable < ActiveRecord::Migration[5.1]
    def change
        create_table :user_books do |t|
            t.boolean :returned
            t.integer :user_id
            t.integer :book_id
        end
    end
end