# fizzbuzz.arr
# Prints the numbers from 1 to 100, replacing multiples of 3 with "Fizz",
# multiples of 5 with "Buzz", and multiples of both with "FizzBuzz".

fun fizzbuzz(n :: Number) -> String:
  doc: "Returns the FizzBuzz string for a given number"
  ask:
    | num-modulo(n, 15) == 0 then: "FizzBuzz"
    | num-modulo(n, 3)  == 0 then: "Fizz"
    | num-modulo(n, 5)  == 0 then: "Buzz"
    | otherwise: tostring(n)
  end
end

each(lam(n): print(fizzbuzz(n)) end, range(1, 101))

fun count-from-to(start :: Number, finish :: Number) -> List<Number>:
  if start > finish:
    empty
  else:
    link(start, count-from-to(start + 1, finish))
  end
end

fun count-to-100() -> List<Number>:
  count-from-to(1, 100)
end

check "fizzbuzz":
  fizzbuzz(1)  is "1"
  fizzbuzz(3)  is "Fizz"
  fizzbuzz(5)  is "Buzz"
  fizzbuzz(15) is "FizzBuzz"
  fizzbuzz(30) is "FizzBuzz"
  fizzbuzz(9)  is "Fizz"
  fizzbuzz(10) is "Buzz"
  fizzbuzz(100) is "Buzz"
end

check "count-to-100":
  count-from-to(3, 5) is [list: 3, 4, 5]
  count-to-100() is range(1, 101)
end
