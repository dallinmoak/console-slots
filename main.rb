require_relative "spinner.rb"

STARTINGBLANACE = 50

balance = STARTINGBLANACE
done = false

def printPrizes
  puts "here are winning combos:"
  puts "* Any 3 shapes in a row: +5$"
  puts "* Any 3 colors in a row: +3$"
end

def showBalance(balance)
  puts "your balance is #{balance}$."
end

def getInput(prompt, good_input)
  good_input = good_input.map{|i| i.to_s}
  print prompt
  outp = gets.chomp
  bad = !good_input.include?(outp)
  if bad
    while bad
      print "Try again. #{prompt}"
      outp = gets.chomp
      bad = false if good_input.include?(outp)
    end
  end
  outp
end

def getBet
  prompt = "enter the number of dollars you want to bet: "
  good_input = (1..10).to_a
  getInput(prompt, good_input).to_i
end

def spin(bet)
  puts "spinning..."
  spins = []
  3.times do
    spins.push(spinner)
  end
  win = 0

  if spins[0].keys[0] == spins[1].keys[0] && spins[2].keys[0] == spins[1].keys[0]
    win = bet + 5
    puts "3 shapes in a row! plus 5"
  elsif spins[0].values[0] == spins[1].values[0] && spins[2].values[0] == spins[1].values[0]
    win = bet + 3
    puts "3 colors in a row! plus 3"
  else
    puts "sorry, no winning combos"
    win = 0 - bet
  end
  return win 
end

def askIfDone(balance)
  showBalance(balance)
  prompt = "Do you want to spin again?(y/n) "
  good_input = ["y", "n"]
  ans = getInput(prompt, good_input)
  if ans == "y"
    false
  else
    true
  end
end

puts "Welcome to Dallin's slot machine!"

while !done
  printPrizes()
  showBalance(balance)
  bet = getBet()
  system "clear"
  winnings = spin(bet)
  balance += winnings 
  done = askIfDone(balance)
end

puts "You won #{balance - STARTINGBLANACE}$. thanks for playing."