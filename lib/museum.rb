class Museum

  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron
  end



  def patrons_by_exhibit_interest
    # We need to return a hash with the exhibit instance as the key, and an array of each interested patron instance as the value
    hash = Hash.new

require 'pry'
binding.pry

    @exhibits.map do |exhibit|
      hash[exhibit] = []
      @patrons.map do |patron|
       # need an if statement or a helper method of some sort

      end
    end
    hash
  end

end
