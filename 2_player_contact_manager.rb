# Recently you've had some trouble keeping your players' info neat and organized
# so you've decided to write a bit of code to help keep them sorted!
# The goal of this code is to create an array of hashes that stores
# a player's name and contact number from a given string.
# The method should return an empty array if the argument passed is an empty string or nil.

# Examples:
# player_manager("John Doe, 8167238327, Jane Doe, 8163723827")
# ==> returns [{player: "John Doe", contact: 8167238327}, {player: "Jane Doe", contact: 8163723827}]

# player_manager(nil)
# ==> returns []

# player_manager("")
# ==> returns []

def player_manager(players)
  player_manager_array = []
  if players == "" || players == nil
    return player_manager_array
  else
    players_array = players.split(", ")
    i = 0
    
    while i < (players_array.length - 1) do
      hash = {}
      hash[:player] = players_array[i]
      hash[:contact] = players_array[i + 1].to_i
      player_manager_array.push(hash)
      i += 2
    end
    return player_manager_array
  end
end

player_manager("John Doe, 8167238327, Jane Doe, 8163723827")

# favourite (readable) alternative...
def player_manager(players)
  return [] if players == nil
  players.split(", ").each_slice(2).map do |name, number|
    { :player => name, :contact => number.to_i }
  end
end