class User < ActiveRecord::Base
    has_many :books
    has_many :authors, through: :books
    has_many :categories, through: :books
    has_many :userbooks

    def check_out_book(book)
        UserBook.create(user: self, book: book, returned: false)
    end

    def return_book(book)
        ub = UserBook.all.where(book: book, returned: false)
        ub.update(returned: true)
    end
end