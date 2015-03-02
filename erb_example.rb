require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

x = x - 20
template = ERB.new "I changed the value of x to <%= x %>"
puts template.result(binding)

myName = "Alejandro"
momName = "Thais"
myHash = {"Alejandro" => "Corredor", "Thais" => "Lopez"}
template = ERB.new "My last name is <%= myHash['#{myName}'] %> and my
mom's last name is <%= myHash['#{momName}'] %>"
puts template.result(binding)

template = ERB.new "<%= 5 + 5 + 5 * 20 %>"
puts template.result(binding)
