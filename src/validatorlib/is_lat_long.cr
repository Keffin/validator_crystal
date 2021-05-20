module ValidatorCrystal

    # https://stackoverflow.com/a/18690202, source for this regex
    # however, i made the opening and closing parenthesis in long lat optional
    # meaning that (lat, long) and lat, long is accepted
    
    # lat -90 -> +90
    # long -180 -> +180
    # https://github.com/validatorjs/validator.js/blob/master/src/lib/isLatLong.js, source for regex
    @@lat = /^\(?[+-]?(90(\.0+)?|[1-8]?\d(\.\d+)?)$/
    @@long = /^\s?[+-]?(180(\.0+)?|1[0-7]\d(\.\d+)?|\d{1,2}(\.\d+)?)\)?$/
    #@@lat = /^\(?[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?)$/
    #@@long = /\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+))?\)?$/

    def self.lat_long(input : String) : Bool 
        list_of_lat_long = input.split(",")
        
        return false if list_of_lat_long.size != 2 
        return false if input.empty? || input.blank?  

        if list_of_lat_long[0].starts_with?("(") && !list_of_lat_long[1].ends_with?(")")
            false 
        end 

        if !list_of_lat_long[0].starts_with?("(") && list_of_lat_long[1].ends_with?(")")
            false 
        end 
        list_of_lat_long[0].match(@@lat) && list_of_lat_long[1].match(@@long) ? true : false 
    end 

    puts lat_long("(-42, +140")
    puts lat_long("-42, +140")
    puts lat_long("-400, +90")
    puts lat_long("-90, +400")
end 