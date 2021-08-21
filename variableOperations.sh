#!/bin/bash

# This script displays various information to the screen.


# Display 'Hello'
echo 'Hello'

# Assign a value to a variable.
# Not spaces!
# "" or ''
# cannot start with digit
# WORD1 _WORD is ok
# - and @ not allowed
# ALL UPPERCASE IS BEST PRACTICE
WORD='script' 


# Display that value using the variable.
echo "$WORD"

# Demonstrate that single quotes cause variables to not get expanded.
# Displays just what is in the quotes -> $WORD here
echo '$WORD'

# Combine the variable with hard-coded text.
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax.
echo "This is a shell ${WORD}"

# Append text to the variable.
# {} syntax need to be used here-> otherwise bash does not know variable isnt wording
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable.
# This doesn't work:
echo "$WORDing is fun!"

# Create a new variable
ENDING='ed'

# Combine the two variables.
echo "This is ${WORD}${ENDING}."

# Change the value stored in the ENDING variable.  (Reassignment.)
ENDING='ing'
echo "${WORD}${ENDING} is fun!"

# Reassign value to ENDING.
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"

