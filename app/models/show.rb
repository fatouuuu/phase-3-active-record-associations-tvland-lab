class Show < ActiveRecord::Base
    #characters: should return a list of all the character instances associated with the show.
    # Hint: is there an association macro you can use to create this method?
    has_many :characters

    #network: should return the network instance this show belongs to
    # Hint: is there an association macro you can use to create this method?
    belongs_to :network

    #actors_list: Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with a show. 
    # Remember, a show should have many actors through characters. 
    # Hint: it may help to use another association macro to access the actors for the show.
    has_many :actors, through: :characters

    # def characters
    #     Character.where(show_id: self.id)
    # end 

    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end

    # def network
    #     Network.find(self.network_id)
    # end

    # can be used to build its characters 
    # def create_character_new 
    #     show = self.create(name: "Happy ")
    #     self.characters.build(name: "Penny")
    #     self.save
    #     expect(self.characters.count).to eq(1)
    # end
    
  
end