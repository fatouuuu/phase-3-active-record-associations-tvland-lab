class Actor < ActiveRecord::Base
    #characters: an actor has many characters, so write code that creates an instance method that will return all the characters that the actor has played. 
    # Hint: is there an association macro you can use to create this method?
    has_many :characters

    #shows: an actor has many shows through characters, so write code that creates an instance method that will return all the shows that the actor has been in.
    # Hint: is there an association macro you can use to create this method?
    has_many :shows, through: :characters

    #full_name: an actor should have a method that returns the first and last name of an actor.
    def full_name
        # self.first_name + " " + self.last_name
        "#{self.first_name} #{self.last_name}"      
    end

    #list_roles: an actor should have a method that returns all of the characters that actor has and the show that the character is on.
    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end

    # def characters
    #     Character.where(actor_id: self.id)
    # end

    # def shows 
    #     self.characters.map do |character|
    #         character.show.uniq
    #     end
    # end
  
end