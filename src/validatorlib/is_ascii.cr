module ValidatorCrystal

    @@pattern = /^[\x00-\x7F]+$/

    def self.is_ascii(input : String) : Bool 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_ascii("hej")
    puts is_ascii("123123")
    puts is_ascii("@@@!!!???")
    # Courtesy of validatorjs test cases
    puts is_ascii("ｆｏｏbar")
end 