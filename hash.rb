hash = Hash.new
p hash
p hash.methods
p hash.empty?

hash = {age: 29,
        name: 'A-a-ron'}
hash[:location] = 'Michigan'
p hash.empty?
p hash

h1 = {key2: 2, key1: 1}
h2 = {key1: 1, key2: 2}
h3 = {key1: 1, key3: 3}
p h1.eql? h2 # checks if the hashes are equal
p h1.eql? h3 # checks if the hashes are equal
# name of the keys are identical, but order is irrelevant 

# checks whether the key is present
p h1.key? 'key1'
p h1.key? :key1

p h1.equal? h1 # for equal? it must be the identical obj, not just the same key/values
p h1.equal? h2

p h1.object_id
p h2.object_id

h5 = h1
p h5.object_id
p h1.equal? h5

h8 = {key2: 2, key1: 1, keynil: nil}
p h8.compact # compact removes both key/value if the value is nil

p h8[:keynil]

h6 = {key2: 2, key1: 1, key2: 3}
# entering duplicate keys into a hash will overwrite the first key/value
p h6