require 'pry'

def begins_with_r(array)
  
  new_array = array.select do |string|
    string.start_with? 'r'
  end 
  
  array == new_array ? true : false 
  
end 

def contain_a(array)
  new_array = []
  array.each do |string|
    if string.include?("a") == true
      new_array << string
    end
  end 
  new_array
end 

def first_wa(array)
  array.each do |string|
    if string.to_s.start_with?("wa") == true 
      return string 
    end 
  end 
end

def remove_non_strings(array)
  array.delete_if {|element| element.is_a?(String) == false}
  array
end 

def count_elements(array)
  new_array = []
  array.uniq.each do |element|
    new_array << {
      :name => element[:name],
      :count => array.count(element)
    }
  end
  return new_array
end

def merge_data(keys, data)
  keys.each do |element|
    element.merge!(data[0][element[:first_name]])
  end 
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == 'cool'
      new_array << element
    end 
  end 
  new_array
end 

def organize_schools(data)
  nyc_array = []
  chicago_array = []
  sf_array = []
  
  data.each do |element, location_hash|
    if location_hash[:location] == 'NYC'
      nyc_array << element
    elsif location_hash[:location] == 'Chicago'
      chicago_array << element
    elsif location_hash[:location] == 'SF'
      sf_array << element
    end
  end
  
  hash = {
    "NYC" => nyc_array,
    "Chicago" => chicago_array,
    "SF" => sf_array
  }
  
  hash
  
end 