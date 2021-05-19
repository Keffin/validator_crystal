module ValidatorCrystal
    @@pattern = /^0[xX][0-9a-fA-F]+$/

    def self.is_hexadecimal(input : String) : Bool 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_hexadecimal("0XdeadBEEF")
    puts is_hexadecimal("0x0000aaFFF123")
    puts is_hexadecimal("world")
    puts is_hexadecimal("")
end 