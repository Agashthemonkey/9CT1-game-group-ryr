extends Node

const SERVER_PORT = 8080
const SERVER_IP = "127.0.0.1"

func become_host():
	print("Starting Host ...")
	
	var server_peer = ENetMultiplayerPeer.new()
	server_peer.create_server(SERVER_PORT)
	
	multiplayer.multiplayer_peer = server_peer
	
	multiplayer.peer_connected.connect(_add_player_to_game)
	multiplayer.peer_disconnected.connect(_del_player)
	
func join():
	print("New Player Joining")

func _add_player_to_game(id: int):
	print("Player %s joined the game!" % id)
	
func _del_player(id: int):
	print("Player %s left the game!" % id)
