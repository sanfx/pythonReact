# python React container
pythonReactContainer container that lets you deploy python based react component rendering web apps.

Steps before you run the container:

* cd to project folder, I recommend you create app folder based on which will contain python app.
* Create an app folder in this container repository.
* put the python `app.py` module in this folder that should be the main module running httpServer.

The app folder gets mounted to Container while you run.

Command
=======
`docker run  -v absolute/path/to/app/:/app/  -p 8080:8080 -it pyApp`

if you modify anything in the Dockerfile, do not forget to rebuild it.

`docker build . -t pyapp`
