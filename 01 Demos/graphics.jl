using Cairo, Gadfly
plot_dir = "C:/Users/Mason/Dropbox/Projects/Julia/Triangle Julia Users Group/TriangleJuliaUsers/01 Demos/Graphics"

# Plot two random vectors of length 10
plot1 = plot(x = rand(10), y = rand(10))
draw(PNG("$plot_dir/plot1.png", 6inch, 4inch), plot1)
