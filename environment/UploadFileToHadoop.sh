#!/bin/bash
#################################################################
#																#
# 		FILENAME	:		UploadFileToHadoop.sh				#
#																#
#		AUTHOR		:		Alex Redei							#
#																#
#		DATE		:		April 28th, 2016					#
#																#
#		PURPOSE		:		The purpose of this script is to 	#
#							 upload a file to the dri hadoop	#
#							 cluster launched in Azure.	NOTE:	#
#							 the user must have the cross 		#
#							 platform Azure CLI installed.		#
#																#
#		OVERVIEW	:		1) Connect to Azure					#
#							2) List storage accounts			#
#							3) Connect to storage container		#
#																#
#		REVISIONS	:		4/28/16 - Alex R. - Created 		#
#																#
#################################################################

HADOOP_CLUSTER="drihadoop"
RESOURCE_GROUP="dri"


#################################################################
# STEP		 :  					1		                   	#
#                                                             	#
# PURPOSE    : Login to Azure                      	#
#################################################################

azure login 


#################################################################
# STEP		 :  					2		                   	#
#                                                             	#
# PURPOSE    : List accounts and get Blob keys					#
#																#
#################################################################

azure storage account list
$KEY=azure storage account keys list $HADOOP_CLUSTER $RESOURCE_GROUP

#################################################################
# STEP		 :  					3		                   	#
#                                                             	#
# PURPOSE    : Connect to the container using the primary key	#
#																#
#################################################################

azure storage container list -a drihadoop -k $KEY



