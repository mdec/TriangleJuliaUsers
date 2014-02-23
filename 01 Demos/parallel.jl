# Julia offers very simple parallel programming techniques.

# For looping:
    input = Int[1:1000000]
    squares = Array(Int, 1000000)

    # Vectorized squaring of every value in input
    println("Vectorized time:")
    @time input .^ 2

    # Basic for loop
    println("Basic loop time:")
    @time for i = input
        squares[i] = i ^ 2
    end

    # Parallel loop
    println("Parallel loop time:")
    @time @parallel for i = input
        squares[i] = i ^ 2
    end

#




