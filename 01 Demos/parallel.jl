# Julia offers very simple parallel programming techniques.

# Looping:
<<<<<<< HEAD
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

=======
    input = Int[1:1000]

    # Basic for loop
    println(">> Basic loop:")
    sum_squares = int64(0)

    for i in input
        sum_squares += i ^ 2
    end
    println(sum_squares)

    # Parallel loop
    println("Parallel loop time:")
    sum_squares = int64(0)

    sum_squares = @parallel (+) for i in input
        i ^ 2
    end
    println(sum_squares)

>>>>>>> c14f8ce380a9c261f689800a59b19f3de3d4cbd8
