def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_data ={}
  data.each do |attribute, detail|
    detail.each do |option, names|
      while names.length > 0
        name = names.pop
        new_pigeon_data[name] ||= {}
        if !new_pigeon_data[name][attribute]
          new_pigeon_data[name][attribute] = [option.to_s]
        else
          new_pigeon_data[name][attribute].push(option)
        end
      end
    end
  end
  p new_pigeon_data
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