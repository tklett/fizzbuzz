fun count-up(n):
  if n > 100:
    nothing
  else:
    block:
      if num-modulo(n, 3) == 0:
        print("fizz")
      else if num-modulo(n, 5) == 0:
        print("buzz")
      else if num-modulo(n, 15) == 0:
        print("fizz buzz")
      else:
        print(n)
      end
      count-up(n + 1)
    end
  end
end

count-up(1)
