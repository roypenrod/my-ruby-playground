require 'psych'
require_relative 'book'

class Library
    attr_reader :catalog

    def initialize(yaml_file="")
        @catalog = Array.new

        if yaml_file != ""
            @catalog = Psych.load_file(yaml_file)
        end
    end

    def get_books_in_category(category)

        search_results = Array.new

        @catalog.each do |book|
            if book.category.include? category.downcase
                search_results.push book
            end
        end

        search_results
    end


    def add_book(new_book)
        if new_book.class == Book
            @catalog.push(new_book) unless @catalog.include? new_book
        else
            return false
        end
    end

end
