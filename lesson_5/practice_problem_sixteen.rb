# Write a method that returns one UUID when called with no parameters.

def generate_uuid
  characters = []
  (0..9).each { |digit| characters << digit.to_s}
  ('a'..'f').each { |char| characters << char}
  # characters = ["0", "1", .. "9", "a", "b", .. "f"]
  
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
      uuid += '_' unless index >= sections.size - 1
    end

  uuid
end

p generate_uuid

# Solution based on the example provided from the Ruby Docs.

def uuid
  require 'securerandom'
  SecureRandom.uuid
end