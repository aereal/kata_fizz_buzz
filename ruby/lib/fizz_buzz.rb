module FizzBuzz
  def self.fizz_buzz_array(max = 100)
    1.upto(max).map {|n|
      case n
      when -> (x) { x % 15 == 0 }
        'FizzBuzz'
      when -> (x) { x % 3 == 0 }
        'Fizz'
      when -> (x) { x % 5 == 0 }
        'Buzz'
      else
        "#{n}"
      end
    }
  end
end
