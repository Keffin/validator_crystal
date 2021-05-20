module ValidatorCrystal

    def self.is_upper_case(input : String) : Bool 
        !input.empty? && !input.blank? && input == input.upcase ? true : false 
    end 

    puts is_upper_case "hello"
    puts is_upper_case "HELLO"
    puts is_upper_case ""
    puts is_upper_case "hELLO"
    

end 