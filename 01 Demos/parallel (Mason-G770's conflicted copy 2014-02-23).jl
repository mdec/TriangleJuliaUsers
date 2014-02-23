# Julia offers very simple parallel programming techniques.

# For looping:
    input = Int[1:100000]

    # Basic for loop
    println(">> Basic loop:")
    sum_squares = int64(0)
    @time for i = input
        sum_squares += i
    end
    println(sum_squares)

    # Parallel loop
    println("Parallel loop time:")
    sum_squares = int64(0)
    @time sum_squares = @parallel (+) for i in input
        i
    end
    println(sum_squares)



