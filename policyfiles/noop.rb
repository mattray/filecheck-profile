name 'noop'

default_source :supermarket

run_list 'fc_cookbook::noop'

# Specify a custom source for a single cookbook:
cookbook 'fc_cookbook', path: '../fc_cookbook'
