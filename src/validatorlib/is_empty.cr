module ValidatorCrystal

    def self.is_empty(input : String) : Bool 
        input.empty? ? true : false 
    end 

    puts is_empty("")
    puts is_empty(" ")
    puts is_empty(".")
end 