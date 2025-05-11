
class FamilyMember
  attr_reader :expenses, :savings

  def initialize(expenses = 0.0)
    @expenses = expenses
    @savings = 0.0
  end

  def month_end
    @savings -= @expenses
  end
end

class Teenager < FamilyMember
  attr_reader :pocket_money

  def initialize(pocket_money, expenses)
    super(expenses)
    @pocket_money = pocket_money
  end

  def month_end
    @savings += @pocket_money
    super
  end
end

class Adult < FamilyMember
  attr_reader :salary, :interest

  def initialize(salary, interest, expenses)
    super(expenses)
    @salary = salary
    @interest = interest
  end

  def month_end
    @savings += (@savings * @interest / 100.0) + @salary
    super
  end
end

class Family
  def initialize
    @members = []
  end

  def add_family_member(member)
    raise "Only two family members allowed" if @members.size >= 2

    @members << member
  end

  def pay_day
    @members.each(&:month_end)
  end

  def print_savings
    @members.each do |member|
      puts "#{member.class}: #{format('%.2f', member.savings)}"
    end
  end
end


family = Family.new

2.times do |i|
  print "Enter a teenager or adult? "
  type = gets.chomp.strip.downcase

  if type == 't'
    print "Enter pocket money: "
    pocket = gets.chomp.to_f
    print "Enter expenses: "
    expenses = gets.chomp.to_f
    member = Teenager.new(pocket, expenses)
  elsif type == 'a'
    print "Enter salary: "
    salary = gets.chomp.to_f
    print "Enter interest: "
    interest = gets.chomp.to_f
    print "Enter expenses: "
    expenses = gets.chomp.to_f
    member = Adult.new(salary, interest, expenses)
  else
    puts "Invalid type, please enter 't' or 'a'"
    redo
  end

  family.add_family_member(member)
end

loop do
  print "Another month? (y/n): "
  input = gets.chomp.strip.downcase
  break if input == 'n'

  family.pay_day
  family.print_savings
end

puts "\nFinal savings:"
family.print_savings
