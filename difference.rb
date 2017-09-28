ObjectMismatcError = Class.new(RuntimeError)

class Vehicle
  attr_reader :number_of_wheels
  public :number_of_wheels #NOTE It is not necessary

  def initialize(number_of_wheels = 4)
    @number_of_wheels = number_of_wheels
  end

  def ==(another_vehicle)
    raise ObjectMismatcError unless another_vehicle.is_a? self.class

    @number_of_wheels == another_vehicle.number_of_wheels
  end

  alias_method :===, :==
end

class Animal
  attr_reader :number_of_legs
  protected :number_of_legs

  def initialize(number_of_legs = 4)
    @number_of_legs = number_of_legs
  end

  def ==(another_animal)
    raise ObjectMismatcError unless another_animal.is_a? self.class

    @number_of_legs == another_animal.number_of_legs
  end

  alias_method :===, :==
end


class Human
  attr_reader :number_of_arms
  private :number_of_arms

  def initialize(number_of_arms = 2)
    @number_of_arms = number_of_arms
  end

  def ==(another_human)
    raise ObjectMismatcError unless another_human.is_a? self.class

    @number_of_arms == another_human.number_of_arms
  end

  alias_method :===, :==
end
