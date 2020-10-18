class UserBook < ActiveRecord::Base
    belongs_to :user
    belongs_to :book
    # @@all = []
    # attr_accessor :user, :book

    # def initialize(user, book)
    #     @user = user
    #     @book = book
    #     @@all << self
    #     self.returned = false
    # end

    # def self.all
    #     @@all
    # end

end