fun count-up(n):
  if n > 100:
    nothing
  else:
    block:
      print(n)
      count-up(n + 1)
    end
  end
end

count-up(1)
