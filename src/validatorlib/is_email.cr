module ValidatorCrystal

    # Source: https://html.spec.whatwg.org/multipage/input.html#valid-e-mail-address
    @@pattern = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/
    @@max_num_char = 254

    def self.is_email(input : String) : Bool 
        return false if input.size > 254 
        !input.empty? && !input.blank? && input.match(@@pattern) ? true : false 
    end 

    puts is_email "kev@foo.com"
    puts is_email "something@something.something"
    puts is_email "x.y.z@z.y.a"

    puts ""

    puts is_email "hello@"
    puts is_email "@gmail.com"
    puts is_email "x.y@z.com."
end 