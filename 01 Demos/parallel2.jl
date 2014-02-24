# The following is an example adapted from http://www.blog.juliaferraioli.com/2014/02/julia-on-google-compute-engine-parallel.html

@parallel for i = 1:10
    # spawn the process
    r = @spawn rand(Int64)

    # print out the results
    @printf("process: %d int: %d\n", r.where, fetch(r))
    println("here")
end
