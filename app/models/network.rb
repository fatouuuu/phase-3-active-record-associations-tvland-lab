class Network < ActiveRecord::Base
    #shows: should return a list of all the show instances associated with the network.
    # Hint: is there an association macro you can use to create this method?
    has_many :shows

    # def shows 
    #     Show.where(network_id: self.id)
    # end 

    #sorry: returns a string "We're sorry about passing on John Mulaney's pilot".
    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end

end
