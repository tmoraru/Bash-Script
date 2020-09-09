#!/bin/bash 

echo -e "Hi, please type the word: \c"
read word
echo "The word you entered is: $word"
echo -e "Can you please enter 2 words?"
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""
echo "How do you feel about Bash Scripting?"
# read command now stores a reply into the default build-in variable $REPLY
read
echo "You said $REPLY, I'm glad to hear that!"
echo -e "What is your favorite colours?"
# -a makes read command to read nto a array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"

