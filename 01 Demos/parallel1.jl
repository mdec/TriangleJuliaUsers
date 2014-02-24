# Julia offers very simple parallel programming techniques.

# Looping:
input = Int[1:1000]

# Basic for loop
println(">> Basic loop:")
sum_squares = int64(0)

for i in input
    sum_squares += i ^ 2
end
println(sum_squares)

# Parallel loop
println("Parallel loop:")
sum_squares = int64(0)

sum_squares = @parallel (+) for i in input
    i ^ 2
end
println(sum_squares)
