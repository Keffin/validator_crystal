module ValidatorCrystal

    @@pattern = /^(-)*(.)*[0-9]+(.)*$/
    
    def self.is_numeric(input : String) : Bool 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_numeric("42")
    puts is_numeric("22.33")
    puts is_numeric("0")
    puts is_numeric("-42")
    
end 