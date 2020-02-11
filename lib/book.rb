require 'pry'
  attr_accessor :author, :page_count, :genre	
  attr_reader :title	


class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  def initialize(title)	  def initialize(title)
    @title = title	    @title = title
  end	  end

  GENRES = []

  def genre=(genre)
    @genre = genre
    GENRES << genre unless GENRES.any? { |g| g == genre }
  end


  def turn_page	  def turn_page
    puts "Flipping the page...wow, you read fast!"	    puts "Flipping the page...wow, you read fast!"

