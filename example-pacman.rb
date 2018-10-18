# This is an example incorporating the DFA script into a project
# You can use the following words to represent the actions
# touch: When the Ghost touches Pacman
# spot: When the Ghost spots the Pacman
# power: When the power pellet is eaten
# endpower: When the power pellet expires
class Dfa
  DFA = [[2,1,3,0],[0,1,3,1],[0,1,3,0],[4,3,3,1]]
  Description = ['Wander around the map', 'Chase PacMan!', 'Return to homebase', 'Run away from PacMan']
  state = 0
  while state != 4
    print("Enter the action:")
    string = gets.chomp
    alphabet = ['touch','spot','power','endpower']
    state = DFA[state][alphabet.index(string)]
    if state == 4
      print "Pacman Won. GAME OVER"
    else
      puts Description[state]
    end
  end
end
