# A name that describes what the system you're building with Chef does.
name 'fc_cookbook'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'fc_cookbook::default', 'audit'

# Specify a custom source for a single cookbook:
cookbook 'fc_cookbook', path: '../fc_cookbook'
