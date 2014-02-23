# Demo of Cairo and Gadfly packages to use for plotting (similar to R's ggplot)
# Code can be found on this page of the Gadfly documentation:
# http://dcjones.github.io/Gadfly.jl/#drawing-to-backends

using Cairo, Gadfly, RDatasets
plot_dir = "C:/Users/Mason/Dropbox/Projects/Julia/Triangle Julia Users Group/TriangleJuliaUsers/01 Demos/Graphics"

# Example 1: Plot two random vectors of length 10
plot1 = plot(x = rand(10), y = rand(10))
draw(PNG("$plot_dir/plot1.png", 6inch, 4inch), plot1)

# Example 2: Add a smoothing line:
plot2 = plot(
    x = rand(10),
    y = rand(10),
    Geom.point,
    Geom.smooth,
    Guide.xlabel("This is the x-axis"),
    Guide.ylabel("This is the y-axis"),
    Guide.title("This is the overall plot title"))

draw(PNG("$plot_dir/plot2.png", 6inch, 4inch), plot2)

# Example 3: Export to SVG/PNG/PDF/PS/D3
plot_function = SVG
plot_suffix = "svg"
draw(plot_function("$plot_dir/plot3.$plot_suffix", 6inch, 4inch), plot2)

# Example 4: Use a DataFrame
plot4 = plot(
    data("car", "SLID"),
    x       = "Wages",
    color   = "Language",
    Geom.histogram)

draw(PDF("$plot_dir/plot4.pdf", 6inch, 4inch), plot4)
