class Calculator

  def sum input
    sum = 0
    input.each { |i|
      sum += i
    }
    sum
  end

  def multiply *input
    mul = 1
    input.flatten!
    input.each do |i|
      mul *= i
    end
    mul
  end

  def pow base, exp
    #base ** exp
    multiply Array.new(exp, base)
    total = base
    (1...exp).each do
      total *= base
    end
    total
  end

  def fac n
    #multiply (1..n).to_a
    return 1 if n.zero?
    n * fac(n-1)
  end

end
