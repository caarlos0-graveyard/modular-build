# function to call a given script
# usage: $(call script,scriptname)
# please see some usage examples bellow
script = ./scripts/$(1).sh

# function to call a given binary
# usage: $(call bin,binary)
# please see some usage examples bellow
bin = ./bin/$(1)

newtask:
	$(call script,newtask)

# example script
example:
	$(call script,example)

# example bin
examplebin:
	$(call bin,example)

# call both examples
both: example examplebin
