# fizzbuzz

A classic [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) program written in the [Pyret](https://www.pyret.org/) programming language that prints the numbers from 1 to 100.

## Language

[Pyret](https://www.pyret.org/) is a programming language designed for introductory computer-science education. It features clean syntax, built-in testing via `check:` blocks, and strong support for functional programming.

## How It Works

`fizzbuzz.arr` defines a `fizzbuzz(n)` function that returns:

| Condition | Output |
|-----------|--------|
| Multiple of both 3 and 5 | `"FizzBuzz"` |
| Multiple of 3 only | `"Fizz"` |
| Multiple of 5 only | `"Buzz"` |
| Any other number | The number as a string |

It then iterates over the range 1–100 and prints the result for each value, producing output like:

```
1
2
Fizz
4
Buzz
Fizz
...
FizzBuzz
...
100
```

## Running the Program

Open `fizzbuzz.arr` in the [Pyret editor](https://code.pyret.org/) or run it with a local Pyret installation.

## Tests

Tests are written using Pyret's built-in `check:` blocks at the bottom of `fizzbuzz.arr`. They verify that:

- Plain numbers are returned as strings (`fizzbuzz(1)` → `"1"`)
- Multiples of 3 return `"Fizz"`
- Multiples of 5 return `"Buzz"`
- Multiples of 15 return `"FizzBuzz"`

Pyret runs `check:` blocks automatically when the file is executed.

