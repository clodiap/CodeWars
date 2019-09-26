# Create a Person class with a greet method that returns the first and last name of the person with a greeting. For example if the first name is 'Bob' and the last name is 'Smith' then it should return 'Hello, Bob Smith!'.

class Person

  def initialize( first_name, last_name )
    @first_name = first_name
    @last_name = last_name
  end

  def greet
    "Hello, #{@first_name} #{@last_name}!"
  end

end

# Other solutions :

# class Person
#   attr_reader :first_name, :last_name

#   def initialize first_name, last_name
#     @first_name, @last_name = first_name, last_name
#   end

#   def greet
#     "Hello, #{first_name} #{last_name}!"
#   end
# end

########################################

# class Person < Struct.new(:first_name, :last_name)
#   def greet
#     "Hello, #{first_name} #{last_name}!"
#   end
# end

########################################

# class Person
#   def initialize(first, last)
#     @name = "#{ first } #{ last }"
#   end

#   def greet
#     "Hello, #{ @name }!"
#   end
# end
