# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end
    def say(message)
        return "*~*#{message}*~*"
    end
end

unicorn1 = Unicorn.new("Jeremy")
p unicorn1.name
p unicorn1.color
p unicorn1.say("Hello!")

unicorn2 = Unicorn.new("Susan", "purple")
p unicorn2.name
p unicorn2.color
p unicorn2.say("Well, hello there my dear!")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# class Vampire
#     attr_reader :name, :pet, :thirsty
#     def initialize(name, pet = "bat")
#         @name = name 
#         @thirsty = true
#         @pet = pet
#     end
#     def change_pet(new_pet)
#         @pet = new_pet
#     end
#     def drink
#         @thirsty = false
#     end
# end

# vamp1 = Vampire.new("Rupert")
# p vamp1.name
# p vamp1.pet
# p vamp1.thirsty
# p vamp1.drink
# p vamp1.change_pet("owl")



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

# class Dragon
#     attr_reader :name, :rider, :color, :is_hungry
#     def initialize(name, rider, color, is_hungry = true)
#         @name = name
#         @rider = rider
#         @color = color
#         @times_eaten = 0
#         @is_hungry = is_hungry
#     end
#     def eat
#         @times_eaten = @times_eaten + 1
#         if @times_eaten >= 4
#             @is_hungry = false
#         end
#     end      
# end

# dragon1 = Dragon.new("Jeff", "Sam", "Purple")
# p dragon1.name
# p dragon1.rider
# p dragon1.color
# p dragon1.is_hungry
# dragon1.eat
# dragon1.eat
# p dragon1.is_hungry
# dragon1.eat
# dragon1.eat
# p dragon1.is_hungry

# dragon2 = Dragon.new("Draco", "Boromir", "Red")
# p dragon2
# dragon2.eat
# dragon2.eat
# p dragon2.is_hungry
# dragon2.eat
# dragon2.eat
# p dragon2

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

# class Hobbit
#     attr_reader :name, :age, :disposition
#     def initialize(name, disposition, age = 0, is_adult = false, is_old = false)
#         @name = name
#         @disposition = disposition
#         @age = age
#         @is_adult = is_adult
#         @is_old = is_old
#         @has_ring = false
#         if @age >= 33
#             @is_adult = true
#         end
#         if @age >= 101
#             @is_old = true
#         end
#         if @name == "Frodo"
#             @has_ring = true
#         end
#     end
#     def celebrate_birthday
#         @age = @age + 1
#         if @age >= 33
#             @is_adult = true
#         end
#         if @age >= 101
#             @is_old = true
#         end
#     end
# end

# hobbit1 = Hobbit.new("Bilbo", "Cranky", 28)
# p hobbit1
# hobbit1.celebrate_birthday
# p hobbit1
# 20.times.collect{hobbit1.celebrate_birthday}
# p hobbit1
# 80.times.collect{hobbit1.celebrate_birthday}
# p hobbit1

# hobbit2 = Hobbit.new("Frodo", "Happy", 73)
# p hobbit2