require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new pet") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq('lil dragon'))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.fun_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end


  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))      
    end
  end


end
