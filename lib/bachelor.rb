require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestans_array|
    if contestans_array["status"] == "Winner"
      # binding.pry
      return contestans_array["name"].split(" ")[0]
    end
  end
  # binding.pry
end

def get_contestant_name(data, occupation)
  data.each do |season, contestans_array|
    contestans_array.each do |data_hash|
      if data_hash["occupation"] == occupation
        return data_hash["name"]
        # binding.pry
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestans_array|
    contestans_array.each do |data_hash|
      if data_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestans_array|
    contestans_array.each do |data_hash|
      if data_hash["hometown"] == hometown
        return data_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  counter = 0
  data[season].each do |data_hash|
    if data_hash["age"]
      # binding.pry
      age_sum += data_hash["age"].to_f
      counter += 1
    end
    # binding.pry
  end
  (age_sum/counter).round
end
