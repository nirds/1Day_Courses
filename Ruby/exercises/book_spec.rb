require_relative "book.rb"

describe Book do
  
  context "attribute behaviors" do

    before :each do
      @book = Book.new author: "JK Rowling", 
                       title: "Harry Potter", 
                       isbn: "12345"
    end

    it "should have a title" do
      @book.should respond_to :title
    end

    it "should let us set a title" do
      @book.title.should eq "Harry Potter"
    end

  end

  context "::books_count" do

    it "should count how many books have been created" do
      Book.books_count.should eq 2
    end

  end

end