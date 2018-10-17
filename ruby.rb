# This is the DFA Chart, where the rows are the Q states and the columns correspond to the columns in the alphabet
# The numbers in the DFA correspond to states, for Q null or other non numeric values, just assign another number to it
DFA = [[3,1],[2,3],[2,2],[3,3]]
# This is the string to test
string = "10100"
# Starting state (usually Q0)
state = 0
# This is the alphabet. Make sure that the columns correspond to the DFA Columns
alphabet = ['0','1']
# Split the string by characters into a character array
darr = string.split('')
# For each character, find the state that corresponds to that character based on that specific state
darr.each do |char|
  state = DFA[state][alphabet.index(char)]
end
# Print pass/not pass
if state == 2 
  print "Passed"
else 
  print "Not Passed"
end
