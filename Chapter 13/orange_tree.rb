# Orange Tree

class OrangeTree

  def initialize(name)
    @height = 0.1
    @age = 1
    @num_of_oranges = 0
    @name = name
  end

  def height
    puts "#{@name} the orange tree is #{@height.round(2)} meters tall."
  end

  def one_year_passes
    @age += 1
    @height += 0.2
    @num_of_oranges = 0
    
    #Tree dies at a random age
    if @age > rand(6) + 12
      puts "#{@name} the orange tree died. It lived to the age of #{@age}"
      puts "#{@name} was #{@height.round(2)} meters tall"
      exit
      
    elsif @age > 3
      @num_of_oranges = (@age * 2.75).to_i
      puts "#{@name} the orange tree is #{@age} years old, #{@height.round(2)} meters tall and has #{@num_of_oranges} oranges."

    else
      puts "#{@name} the orange tree is #{@age} years old, #{@height.round(2)} meters tall and has no oranges yet because it is too young."
    end
  end

  def pick_an_orange
    if @num_of_oranges == 0
      puts "There aren't any more oranges to pick this year."
      
    else
      @num_of_oranges -= 1
      puts "You picked a delicious orange. There are #{@num_of_oranges} left on the tree this year."
    end
  end
end

#Testing 

my_tree = OrangeTree.new("Clockwork")
my_tree.height # 0.1
3.times {my_tree.one_year_passes}
my_tree.height
my_tree.one_year_passes
14.times {my_tree.pick_an_orange}
5.times {my_tree.one_year_passes}
my_tree.height
10.times {my_tree.one_year_passes}