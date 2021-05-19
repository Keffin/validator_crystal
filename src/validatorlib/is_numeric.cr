module ValidatorCrystal

    pattern = /^(-)*(.)*[0-9]+(.)*$/
    
    def self.is_numeric(input : String, pattern : Regex) : Bool 
        !input.empty? && !input.blank? && input.match(pattern) ? true : false 
    end 

    puts is_numeric("42", pattern)
    puts is_numeric("22.33", pattern)
    puts is_numeric("0", pattern)
    puts is_numeric("-42", pattern)
    
end 