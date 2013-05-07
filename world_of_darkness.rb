class Action 

  def initialize(number_of_dice, challenge_rating)
    @number_of_dice = number_of_dice
    @challenge_rating = challenge_rating
  end

  def attempt
    results = roll_dice
    die_evaluate(results)
  end
  
  
  def roll_dice
    die_rolls = []
    @number_of_dice.times do 
      die_rolls << die_roll
    end
    die_rolls
  end

  def die_evaluate(die_rolls)
    die_rolls.select! do |roll|
      roll >= @challenge_rating
    end
    die_rolls.any?
  end

  def die_roll
    rand(1..10)
  end

end
