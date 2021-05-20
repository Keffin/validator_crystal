module ValidatorCrystal

    def self.is_lower_case(input : String) : Bool 
        !input.empty? && !input.blank? && input == input.downcase ? true : false 
    end 

    puts is_lower_case "hello"
    puts is_lower_case "HELLO"
    puts is_lower_case "A"
    puts is_lower_case "a"
    puts is_lower_case "aaaAAA"
    puts is_lower_case ""
end 