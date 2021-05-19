# Checks if a given string only contains of letters [a-zA-Z]
module ValidatorCrystal

    pattern = /^[a-zA-Z]+$/

    def self.is_alpha(input : String, pattern : Regex) : Bool 
        if typeof(input) != String
            raise Exception.new("The input: #{input}, is not of type string")
        end 
        !input.empty? && !input.blank? && input.match(pattern) ? true : false 
    end 

    puts is_alpha("foo", pattern)
    puts is_alpha("FOO", pattern)
    puts is_alpha("", pattern)
    puts is_alpha("123", pattern)
    # Currently only english letters covered
    puts is_alpha("äää", pattern)
end 