#!/bin/bash
#################################################################
#																#
# 		FILENAME	:		UbuntuEnableRemoteDesktop.sh		#
#																#
#		AUTHOR		:		Alex Redei							#
#																#
#		DATE		:		April 26th, 2016					#
#																#
#		PURPOSE		:		The purpose of this script is to 	#
#							 enable remote desktop access on	#
#							 a Ubuntu VM (running in Azure)		#
#																#
#		OVERVIEW	:		1) Install GUI Desktop 				#
#							2) Install xrdp 					#
#																#
#		REVISIONS	:		4/26/16 - Alex R. - Created 		#
#																#
#################################################################

#################################################################
# STEP		 :  					1		                   	#
#                                                             	#
# PURPOSE    : Install GUI Desktop 		                       	#
#################################################################

sudo apt-get update
sudo apt-get install ubuntu-desktop

#################################################################
# STEP		 :  					2		                   	#
#                                                             	#
# PURPOSE    : Install the xrdp toolkit. Enabled at boot		#
#				automatically by default for Ubuntu 			#
#################################################################

sudo apt-get install xrdp