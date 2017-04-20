# Global variables

T=touch		# it will create an empty file
otherfiles = myfile myotherfile
buildfiles = myfile2

all: $(buildfiles)	# myfile2

# $@ uses the name of the target, in this case it is myfile

myfile:
	$(T) $@		# touch myfile
myotherfile:
	$(T) $@		# touch myotherfile

# $^ uses the list of dependencies myfile myotherfile

myfile2: $(otherfiles)	# myfile myotherfile
	cat $^ > $@

# $(RM) default variable already defined that removes, rm -f

clean:
	$(RM) myfile
	$(RM) myfile2
	$(RM) myotherfile

# I want to add a phony target
