def space
  puts "\n"
end

#ex 1
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each {|n| puts n}
space

#ex 2
arr.each {|n| puts n if n > 5}
space

#ex 3
new_arr = arr.select{|n| n.odd?}
puts new_arr
space

#ex 4
arr << 11
arr.unshift(0)
puts arr
space

#ex 5
arr.pop
arr << 3
puts arr
space

#ex 6
arr.uniq!
puts arr
space

#ex 7
=begin
  An hash uses a key : value system to access information while an array
  doesn't.
=end

#ex 8
new_hash = Hash.new
new_hash1 = {}
new_hash2 = {name:"nate"}
new_hash3 = {:name => "nate"}
puts new_hash1
puts new_hash2
puts new_hash3
space

#ex 9
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if {|k,v| v < 3.5}
space

#ex 10
#The answer to this question is: yes !
hash_with_value_array = {first_name:['nate','elton','thomas']}
arr_with_hash = {first_name:['nate','elton','thomas']}

#ex 11
# I like ruby-docs

#ex 12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone_number] = contact_data[0][2]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone_number] = contact_data[1][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]

#ex 13
puts "Phone number of Sally Johnson is #{contacts['Sally Johnson'][:phone_number]}"
puts "Email of Joe Smith is #{contacts['Joe Smith'][:email]}"
space

#ex 14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
  puts hash
end
space

#bonus ex 14
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name,hash), index|
  fields.each do |field|
    hash[field] = contact_data[index].shift
  end
  puts hash
end
space

#ex 15
ex_arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
ex_arr.delete_if{|string| string.start_with?("s")}
puts ex_arr

ex_arr2 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
ex_arr2.delete_if{|string| string.start_with?("s","w"}
puts ex_arr2

#ex 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map{|x| x.split}.flatten!

#ex 17
#They are equal!
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "This two are equal"
else
  puts "They aren't equal"
end


