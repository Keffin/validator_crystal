module ValidatorCrystal

    @@pattern = /^[0-9a-zA-Z]+$/
    
    def self.is_alpha_numeric(input : String) : Bool 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_alpha_numeric("ABC123")
    puts is_alpha_numeric("123ABC")
end 