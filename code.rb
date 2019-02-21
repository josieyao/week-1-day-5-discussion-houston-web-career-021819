require 'pry'

#1 .   

    class FunnyBots  

        attr_accessor :name, :quotes  

        @@bots = []

        def initialize(name, quotes)
          @name = name
          @quotes = quotes
          @@bots << self
        end

       def random_quote
          self.quotes.sample
        end

        def self.bots
          @@bots
        end

    end

      archer = FunnyBots.new("Archer", ["Danger Zone!", "Read a book", "The cumulative hangover would literally kill me"] )

  #A. What is **self** in this line ```@@bots << self``` ?  
        #Self is archer = FunnyBots.new("Archer", ["Danger Zone!", "Read a book", "The cumulative hangover would literally kill me"] )
  #B. What is **self** in this line ```self.quotes.sample```?  
        #It will return a random quote from archer
  #C. What kind of **method** is this & what is **self**? 
        #``` def self.bots  
        #       @@bots 
        #    end ```  

        #This method is a class method. When you do "self.bots", you are referring to the entire class, not a specific instance.

  #D. Will this work ```archer.bots```? If not, why? 
        #No, it will not work because it will not return the instance. You can only use the class on the methods,not the self.


  #2 .

    class Bicycle

      attr_reader :tire

        def initialize(tire, gears, style)
          @tire = tire
          @gears = gears
          @style = style
        end

        def tire_size
          self.tire
        end

        def self.gears
          @gears
        end

    end

    mongoose = Bicycle.new(4, 10, "BMX")

  #For what reasons will the following method calls fail :
  #```mongoose.tire_size = 5```, ```mongoose.gears```, ```Bicycle.bikes```, ```Bicycle.style```? 
  # Restructure the class to fix the issues.

  #mongoose.tire_size = 5
    # "attr_reader :tire" only allows us to read the instances but can't change it. It cannot be written to or changed. We need a setter or to rewrite it with "attr_accessor".

  #mongoose.gears
    # Can only work on the whole class, not on the instance of a class.

  #Bicycle.bikes
    # There is no ".bikes" class method. We would need to create a new ".bikes" class method inside.

  #Bicycle.style
    # There is no ".style" class method. Create a class method that's:
    # self.style
    # @@styles (this would contain all the styles of that class)








