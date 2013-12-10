module Library
  class Book

    HELLO = "hello world"

    @@books_count = 0

    def self.books_count
      @@books_count
    end

    attr_accessor :title

    def initialize args={}
      $test = "hello world"
      @@books_count += 1
      @author = args[:author]
      @title = args[:title]
    end

  protected

    def print_title
      print @title
    end

  public
    
    def print_author
      print @author
    end
  =begin
  multi-line comment
  =end

  # single line comment

  end
end