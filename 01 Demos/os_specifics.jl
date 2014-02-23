# You can run code based on the operating system is that's detected
# using the @unix, @osx, @windows, and @linux macros.

# @[macro-name]? do-if-true : do-if-false

# Trivial examples:

@windows? println("Your operating system is Windows") : println("Your operating system is not Windows")

@osx? println("Your operating system is OSX") : println("Your operating system is not OSX")

@linux? println("Your operating system is Linux") : println("Your operating system is not Linux")


# More useful example:

@windows? plot_dir = "C:/Users/Mason/Dropbox/Projects/Julia/plots" : plot_dir = "/home/mason/Dropbox/Projects/Julia/plots"
