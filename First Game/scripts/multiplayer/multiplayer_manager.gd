extends Node

const SERVER_PORT = 8080
const SERVER_IP = "127.0.0.1"

func become_host():
	print("Starting Host ...")
	
	var server_peer = ENetMultiplayerPeer.new()
	server_peer.create_server(SERVER_PORT)
	
	multiplayer.multiplayer_peer = server_peer
	
func join():
	print("New Player Joining")
