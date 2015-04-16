#!/usr/bin/env python
#########################################################
#Arafat NOUREDDINE
#2015/01/15
#Purpose : Simulate a Socket Server 
#########################################################

#-*- coding: utf-8 -*-

import sys
import select
import socket

class Server:

	# Contructeur de la class Server.
	#
	# @param port Port de connexion
	# @param listen Nombre de connexion en attente max
	def __init__(self, port = 6666, listen = 5):
		# Initialisation of attr
		self.nbClients = 0	# Nombre de client connectes
		self.sockets = []	# Liste des sockets client

		# Creation du socket serveur
		self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
		# On passe le socket serveur en non-bloquant
		self.socket.setblocking(0)
		# On attache le socket au port d'ecoute.
		self.socket.bind(('', port))
		# On lance l'ecoute du serveur. "listen" est le nombre max de
		# connexion quand la file d'attente
		print 'Server listen (port = %s) ...' %(port)
		self.socket.listen(listen)



	# Surcouche de la fonction socket.recv
	# On utilise le systeme d'exeption de recv pour savoir si il reste
	# des donnees a lire
	#
	# @param socket Socket sur lequelle il faut recuperer les donnees
	# @return Donnces envoyees par le client
	def receive(self, socket):
		buf = "" # Variable dans laquelle on stocke les donnees
		_hasData = True # Nous permet de savoir si il y de donnees a lire
		while _hasData:
			# On passe le socket en non-bloquant
			socket.setblocking(0)
			try:
				_data = socket.recv(256)
				if(_data):
					buf += _data
				else:
					# Deconnexion du client
					_hasData = False
			except:
				_hasData = False
		return buf



	# Fonction qui lance les sockets et s'occupe des clients
	def run(self):
		# On ajoute le socket serveur a la liste des sockets
		self.sockets.append(self.socket)
		# Go
		while True:
			try:
				# La fonction select prends trois parametres qui sont la liste des sockets
				# Elle renvoie 3 valeurs
				# 	1- La liste des sockets qui ont recus des donnees
				# 	2- La liste des sockets qui sont pret a envoyer des donnees
				#	3- Ne nous interesse pas dans notre cas
				readReady ,writeReady, nothing = select.select(self.sockets, self.sockets, [])
			except select.error, e:
				break
			except socket.error, e:
				break

			# On parcours les sockets qui ont recus des donnees
			for sock in readReady:
				if sock == self.socket:
					# C'est le socket serveur qui a recus des donnees
					# Cela signifie qu'un client vient de se connecter
					# On accept donc ce client et on recupere qques infos
					client, address = self.socket.accept()
					# On incremente le nombre de connecte
					self.nbClients += 1
					# On ajoute le socket client dans la liste des sockets
					self.sockets.append(client)
					print ''
					print '================================================='
					print 'accept client : %s' % (address,)
				else:
					# Le client a envoye des donnees, on essaye de les lire
					try:
						# On fait appelle a la surchage que l'on a ecrite plus haut
						data = self.receive(sock)
						if data:
							# On affiche ce qu'on a recu du client
							print 'From client :', data
							# On renvoi au client ce qu'on a recu
							sock.send(data)
							print 'To   client :', data
						else:
							# Si data est vide c'est que le client s'est deconnecte
							# On diminue le nombre de client
							self.nbClients -= 1
							# On supprime le socket de la liste des sockets
							print 'remove client : %s' %(sock.getsockname(),)
							self.sockets.remove(sock)
							print '================================================='
							print ''
					except socket.error, e:						
						print 'remove client : %s' %(sock.getsockname(),)
						self.sockets.remove(sock)
						print '================================================='
						print ''
#------------------------------------------------------------------------------
# Usage
#------------------------------------------------------------------------------
def usage():
  print "Usage: [python] serverSocketSimu.py <port>"
  sys.exit(1)

#------------------------------------------------------------------------------
# Main Entry point
#------------------------------------------------------------------------------
if __name__ == "__main__":
    if len(sys.argv) < 2:
        usage()
    server = Server(int(sys.argv[1]), 5)
    server.run()
