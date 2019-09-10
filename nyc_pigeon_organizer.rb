def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_data ={}
  data.each do |attribute, detail|
    detail.each do |option, name|
      name.each do |n| 
        new_pigeon_data[n] ||= {}
      p new_pigeon_data
    end
  end
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(pigeon_data)