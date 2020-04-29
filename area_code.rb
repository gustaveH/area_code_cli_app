require 'pry'
dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "atlanta" => "770",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
    "kigali" => "250"
}

def get_city_names (city_name)
   city_name.keys
end
def get_area_code (city_name, area_code)
    city_name[area_code]
end

loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city would like to look yp the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else 
        puts "You entered an invalid city name"
    end
end

