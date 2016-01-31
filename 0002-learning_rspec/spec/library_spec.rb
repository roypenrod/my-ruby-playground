require 'spec_helper'

describe "Library object" do
    before :all do
        lib_obj = [
            Book.new("JavaScript: The Good Parts", "Douglas Crockford", ["development", "javascript", "programming"]),
            Book.new("Designing with Web Standards", "Jeffrey Zeldman", ["design", "web"]),
            Book.new("Don't Make me Think", "Steve Krug", ["design", "useability", "interface"]),
            Book.new("JavaScript Patterns", "Stoyan Stefanov", ["development", "javascript", "programming"]),
            Book.new("Responsive Web Design", "Ethan Marcotte", ["design", "web", "useability", "mobile"])
        ]

        File.open "books.yml", "w" do |file|
            file.write YAML::dump lib_obj
        end
    end

    before :each do
        @lib = Library.new "books.yml"
    end

    describe "#new" do

        describe "with no parameters" do
            it "has no books" do
                libtest = Library.new
                expect(libtest.catalog.count).to eq(0)
            end
        end

        describe "with a yaml file paremeter" do
            it "has five books" do
                expect(@lib.catalog.count).to eq(5)
            end
        end
    end

    describe "#get_books_in_category" do
        it "returns all the books in a given category" do
            search_results = @lib.get_books_in_category "JavaScript"
            expect(search_results.count).to eq(2)
        end

        it "returns all the books in a given category" do
            search_results = @lib.get_books_in_category "DESIGN"
            expect(search_results.count).to eq(3)
        end
    end

    describe "#add_book" do
        it "accepts new books" do
            new_book = Book.new("Clean Code", "Robert C. Martin", ["programming", "design", "development"])
            @lib.add_book(new_book)
            expect(@lib.catalog.count).to eq(6)
        end
    end
end
