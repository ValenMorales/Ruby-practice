# using classes 

class Book
    attr_accessor :title, :author, :pages
    
    def initialize(title = "", author = "", pages = 0)
      @title = title
      @author = author
      @pages = pages
    end

end
  
  class Library
    attr_reader :books 
  
    def initialize
      @books = []
    end
  
    def add_book(title, author, pages)
      book = Book.new
      book.title = title
      book.author = author
      book.pages = pages
      @books << book  
    end
  end

  class FantasyBook < Book
    attr_accessor :magic
  
    def initialize(title, author, pages, magic)
      super(title, author, pages)
      @magic = magic
    end
  end
  
  myLibrary = Library.new
  myLibrary.add_book("Moby Dick", "Herman Melville", 291)
  myBook = Book.new("Alce in wonderland", "i dont remember", 34);
  myLibrary.books << myBook
  myFantasyBook = FantasyBook.new("Harry Potter", "i dont remember", 34, "a lot");
  myLibrary.books << myFantasyBook
  
  for element in myLibrary.books 
    puts element.title
  end
