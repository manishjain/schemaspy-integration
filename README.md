# schemaspy-integration
schemaSpy : Data Visualization Tool
==============
To genarate the ER diagrams from a database using schemaSpy tool, follow the steps:

1. Install the latest version of java(requires Java 5 or higher).
2. Download .tar/.zip of java database connector file (platform independent) and uncompress it.(e.g. here used mysql-connector-java-5.1.34.jar downloaded from http://dev.mysql.com).
3. Download and Install Graphviz(an open source graph visualization software) package as per your platform.
	Binaries for a number of OS are available at http://www.graphviz.org/Download.php .
	Mac users may face problem in installing this with message "can't be opened because it is from an unidentified developer".
	To fix that, change your settings in Security & privacy to "Open Anyway". (Here used graphviz-2.38.0.pkg for mac OS).

4. The working of Graphviz can be verified by the commands:-
		--  '$ which dot' will give the path of dot installed like '/usr/local/bin/dot'
		--  '$ dot -V' will give the respective graphviz version like  'dot - graphviz version 2.36.0 (20140111.2315)'

5. For mac users- Graphviz will give some error while creating the build in later versions of Mac like mavericks because X11 is no longer included with OS X.
	For fixing that, download and install xQuartz from https://support.apple.com/en-us/HT201341

6. For ubuntu users- graphviz can also be installed with all the dependencies by searching the same package name 'graphviz' in package manager tools like Synaptic Package Manager.

7. Download the latest jar file of schemaSpy(e.g. schemaSpy_5.0.0.jar is included here) from url http://sourceforge.net/projects/schemaspy/files/schemaspy.

8. The database should have foreign keys constraint, for generating E-R diagrams.

9. Establish the foreign key relationship on the basis of which only, E-R diagrams will be drawn.
[For RoR apps, this task can be simplified by installing gem 'foreigner' by including it in your Gemfile.
You have to also add a migraion file having all migrations. Sample is attached ].

10. The details of the command and option to generate ER-diagram are given at http://schemaspy.sourceforge.net/.

For mysql:

```
java -jar schemaSpy_5.0.0.jar -t mysql -dp mysql-connector-java-5.1.34.jar -host localhost -db sampledb -u root -o ~/

```

For postgresql:


```
java -jar schemaSpy_5.0.0.jar -t pgsql -dp postgresql-9.4-1201.jdbc41.jar -o dir/ -db dbname -host localhost -u user -s public

```
