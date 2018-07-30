
class Book

@@on_shelf = [] # --> will contain that collection of book objects
@@on_loan = [] # --> collection of books that are currently being borrowed

def initialize (book_title, author, isbn_number)
  @book_title = book_title
  @author = author
  @isbn_number = isbn_number
end

def borrow
  if Book.lent_out? == true
    return false
  end
end

def return_to_library

end

def lent_out?
  if Book.borrowed == true
    return true
  else
    return false
  end
end

def self.create(book_title, author, isbn_number)
  new_book = Book.new(book_title, author, isbn_number)
  @@on_shelf << new_book
  return @@on_shelf

end

def self.current_due_date
  @due_date = Time.now + 604800
   @@on_shelf.delete_if do |book|
     book.lent_out? == false
     @@on_loan << book.lent_out?
   end
return @@on_loan

end

def self.overdue_books
end

def self.browse
  book = @@on_shelf.sample
  return book
end

def self.available
  return @@on_shelf
end

def self.borrowed
  return @@on_loan
end


def due_date=(due_date)
  @due_date = due_date
end

def due_date
  @due_date = Time.now + 604800 # --> number of seconds in a wk
  return puts "Your library book is due #{@due_date}."
end

end

new_book = Book.new("Behold the dreamers", "Imbolo Mbue", "123")

p new_book.lent_out?

p Book.borrowed

# p Book.lent_out?

p Book.create("Behold the dreamers", "Imbolo Mbue", "123")

p new_book.lent_out?

p new_book.due_date

p Book.current_due_date
