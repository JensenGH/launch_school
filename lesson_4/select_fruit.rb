# Select the key-value pairs where the value is 'Fruit'.

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  selected_produce = {}
  counter = 0

  loop do
    break if counter >= produce_list.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}