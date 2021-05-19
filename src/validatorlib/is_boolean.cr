module ValidatorCrystal

    @@list_of_bool = ["true", "false"] of String 

    def self.is_boolean(input : String) : Bool
        @@list_of_bool.includes?(input) ? true : false
    end 

    puts is_boolean("true")
    puts is_boolean("false")
    puts is_boolean("Bad")
end 