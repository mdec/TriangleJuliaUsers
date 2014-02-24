# The following is an example adapted from http://www.blog.juliaferraioli.com/2014/02/julia-on-google-compute-engine-parallel.html
# This file should be called/run from the command line with multiple processors, not sourced into the JuliaStudio console.

# To use multiple processor cores, start Julia like this:
# julia -p [2/4/whatever number of processors you have] "path to this file"


@parallel for i = 1:10
    # spawn the process
    r = @spawn rand(Int64)

    # print out the results
    @printf("process: %d int: %d\n", r.where, fetch(r))
    println("here")
end
