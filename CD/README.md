Project Group No. 35

Title: "An Efficient Cloud Based Approach for Decentralized DNS System"

Team: Arisha Siddiqui
	  Shashish Jha
	  Sindhoor Tilak S Hegde
	  Venugopala BV

Guide: Dr. Annapurna D.
-------------------------------------------------------------------------------------------

This project utilizes a blockchain based technology to decentralize a DNS Server.
Along with it, we showcase a cloud simulation of DNS Servers along with a optimizing algorithm.

Documentation.
 
	This README file contains the following

* REQUIREMENTS - neccessary packages needed
* INSTALL - installation instructions
* PROJECT STRUCTURE - Explains each file
* INSTRUCTIONS - detail instructions on how to use
* SOURCE CODE  - Code of the Project
* CONTACT  - how to contact the author or otherwise obtain support
* CREDITS  - credits
--------------------------------------------------------------------------------------------

REQUIREMENTS.

Hardware: Processor: Any Intel or AMD x86 processor supporting SSE2 instruction set.
		  Disk space: Minimum of 2 GB
		  RAM: 512 MB

Software: Operating System:     Ubuntu 12.04 or above
		  Programming language: Python 2.7, PHP 5.6 or above
		  Packages :  			Apache 2.4.* or above
					  			Java Run Time with Oracle Java 8

---------------------------------------------------------------------------------------------

INSTALL.

Installation Instructions

* Python 2.7
   In terminal, type the command
    `sudo apt-get install python`

* PHP 5.6
	In terminal, type the command
	 `sudo apt-get install php`

* Apache
	In terminal, type the command
	 `sudo apt-get install apache2`

* Oracle Java 8
	In terminal, type the following commands
 	 sudo add-apt-repository ppa:webupd8team/java
	 sudo apt-get update

	 sudo apt-get install oracle-java8-installer

---------------------------------------------------------------------------------------------------

PROJECT STRUCTURE

* Documentation - This directory contains all the Documentation files. (Report,Presentations)

* Source
  |------Algorithm
  |			|--------- bestDCAlgorithm         - Python script to execute Algorithm
  |          
  |-------blockchain						   - Contains Blockchain Files
  |			|------ blockchain
  |  		 ------ blockchain.dat
  |			 ------ walkchain
  |			 ------ dumpindex
  |			 ------ walkchain
  |
  |-------server						- Contains files related to Local DNS Server
  |
  |
  |------ cloud_analyst							- Cloud Simulator
  |
  |------ Simulation Files        		- Contains all the Simulation Files
  |           |-----case1.sim
  |            -----case2.sim
------------------------------------------------------------------------------------------------------

INSTRUCTIONS.

* Blockchain

  In terminal, 
	1. cd blockchain
	2. To start the script, type './blockchain'
	3. Follow the instructions in the script
    4. To view the records type './walkchain'
	5. To view information on block lengths type './dumpindex'

* Blockchain Server

  1. Copy the directory 'server' to /var/www/html 
  2. Open the browser
  3. Go the URL 'http://localhost/server/'

* Cloud Simulation

  1. In terminal go the directory './cloud_analyst/jars'
  2. Now type 'java -jar cloud_analyst.jar'
  3. The GUI opens
  
 Executing Simulation
  1. In the GUI, click on Configure Simulation Tab.
  2. Click on Load Configuration and select the file from the 'Simulation_Files' directory.
  3. Click on Done.
  4. Now Click on 'Run Simulation' Tab.

* Algorithm
 To execute the algorithm,

  1. Go the 'Algorithm' Directory			
  2. Type the command './bestDCAlgorithm'

------------------------------------------------------------------------------------------------------------

SOURCE CODE.

To view the source code of the files,

	1. Open the project files with a text editor

---------------------------------------------------------------------------------------------------------------
   
CONTACT.

For help/assistance

Kindly drop in a mail to project-group-35@googlegroups.com

---------------------------------------------------------------------------------------------------------------

CREDITS.

We are indebted to our Guide, Dr. Annapurna D, HOD, Department of Information
Science and Engineering, PESIT-Bangalore South Campus, who has not only coordinated
our work but also given suggestions from time to time.

We are also extremely grateful to our Project Co-ordinators, Dr. Snehanshu Saha,
Professor, Mrs. Pooja Agarwal, Associate Professor, Mrs. Vandana M L and Mrs.
Jyoti Desai, Assistant Professors, Department of Computer Science and Engineering,
PESIT Bangalore South Campus, for their constant support and advice throughout the
course of preparation of this document.
We are greatly thankful to Mr. Sandesh B J, Associate Professor and HOD,
Department of Computer Science and Engineering, PESIT Bangalore South Campus, for
his able guidance, regular source of encouragement and assistance throughout this
project.

We would like to express our immense gratitude to Dr. Suryaprasad J, Director and
Principal, PESIT Bangalore South Campus, for providing us with excellent infrastructure
to complete our project work.

We gratefully acknowledge the help lent out to us by all faculty members of the
Department of Computer Science and Engineering, PESIT Bangalore South Campus, at
all difficult times. We would also take this opportunity to thank our college management
for the facilities provided during the course of the project. Furthermore, we acknowledge
the support and feedback of my parents and friends.

--------------------------------------------------------------------------------------------------------------------


