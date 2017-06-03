armpyreact
==========


arm64 Raspbian based container to run python based web isomorphic app that uses react-component

to run the python react app, cd to the folder containing the app then run the below docker command:

`docker run -v /media/pi/windows\ XP/Downloads/pythonReactApp/:/app/ -p 8080:8080 -itd sansupercool/armpyreact:v1`
