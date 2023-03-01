class Character < ActiveRecord::Base
    #actor: should return the actor instance this character belongs to. 
    # Hint: is there an association macro you can use to create this method?
    belongs_to :actor

    #show: should return the show instance this character belongs to. 
    # Hint: is there an association macro you can use to create this method?
    belongs_to :show

    #say_that_thing_you_say: should return the catchphrase of this character.
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

  
end