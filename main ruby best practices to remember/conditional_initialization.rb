# Conditional Variable Initialization Shorthand "\
# Use ||= to initialize variables only if they’re not already 
# initialized.

# bad
name = name ? name : 'Bozhidar'

# bad
name = 'Bozhidar' unless name

# good - set name to 'Bozhidar', only if it's nil or false
name ||= 'Bozhidar'
