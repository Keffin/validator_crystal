# Checks if a given string only contains of letters [a-zA-Z]
module ValidatorCrystal

    @@pattern = /^[a-zA-Z]+$/

    def self.is_alpha(input : String) : Bool 
        if typeof(input) != String
            raise Exception.new("The input: #{input}, is not of type string")
        end 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_alpha("foo")
    puts is_alpha("FOO")
    puts is_alpha("")
    puts is_alpha("123")
    # Currently only english letters covered
    puts is_alpha("äää")
end 