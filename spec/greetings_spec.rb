require_relative '../lib/greetings'

describe "greet" do
  it "returns Hello followed by his first_name and last_name" do
    bob_smith = Person.new( "Bob", "Smith" )
    expect(bob_smith.greet).to eq("Hello, Bob Smith!")
  end

end


