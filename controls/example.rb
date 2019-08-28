# copyright: 2018, The Authors

title "File Check"

file = attribute('file', default: '/etc/hosts')

# you can also use plain tests
describe file(file) do
  it { should_not exist }
end
