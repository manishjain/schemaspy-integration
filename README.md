# schemaspy-integration
schemaSpy : Data Visualization Tool
==============
To genarate the ER diagrams from a database using schemaSpy tool, follow the steps:- 

	a. Install the latest version of java(requires Java 5 or higher).

	b. Download .tar/.zip of java database connector file (platform independent) and uncompress it.(e.g. here used mysql-connector-java-5.1.34.jar downloaded from http://dev.mysql.com).

	c. Download and Install Graphviz(an open source graph visualization software) package as per your platform. Binaries for a number of OS are available at http://www.graphviz.org/Download..php . Mac users may face problem in installing this with message "can't be opened because it is from an unidentified developer". To fix that, change your settings in Security & privacy to "Open Anyway". (Here used graphviz-2.38.0.pkg for mac OS).

	d. The working of Graphviz can be verified by the commands:-
		--  '$ which dot' will give the path of dot installed like '/usr/local/bin/dot'
		--  '$ dot -V' will give the respective graphviz version like  'dot - graphviz version 2.36.0 (20140111.2315)'

	e. For mac users- Graphviz will give some error while creating the build in later versions of Mac like mavericks because X11 is no longer included with OS X. For fixing that, download and install xQuartz from https://support.apple.com/en-us/HT201341

	f. For ubuntu users- graphviz can also be installed with all the dependencies by searching the same package name 'graphviz' in package manager tools like Synaptic Package Manager.  

	g. Download the latest jar file of schemaSpy(e.g. schemaSpy_5.0.0.jar is included here) from url http://sourceforge.net/projects/schemaspy/files/schemaspy.

	h. The database should have foreign keys constraint, for generating E-R diagrams.

  i. The details of the command and option to generate ER-diagram are given at http://schemaspy.sourceforge.net/ . Here the command run is:-
       java -jar schemaSpy_5.0.0.jar -t mysql -dp mysql-connector-java-5.1.34.jar -host localhost -db sampledb -u root -o ~/
