fun count-up(n):
  if n > 100:
    nothing
  else:
    print(n)
    count-up(n + 1)
  end
end

count-up(1)
