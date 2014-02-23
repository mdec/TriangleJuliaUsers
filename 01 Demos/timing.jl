n = 1000000

# You can time your commands using the tic() and toc() functions before and after the section of code.
tic()
    random_numbers = rand(n)
toc()

# Another alternative is to use the @time macro:
@time random_numbers = rand(n)

# Suppose you want to time multiple lines:
tic()
    random_numbers = rand(n)
    random_sqrts = sqrt(random_numbers)
toc()

@time begin
    random_numbers = rand(n)
    random_sqrts = sqrt(random_numbers)
end

