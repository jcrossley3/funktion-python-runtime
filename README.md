# funktion-python-runtime

The Python runtime for funktion.

Here's one possible way of testing it:

    # Install minikube and funktion, if necessary
    $ minikube start
    $ funktion install platform
    
    # Install the Python runtime
    $ eval $(minikube docker-env)
    $ docker build -t funktion/python-env .
    $ kubectl create -f python-runtime-cm.yml
    
    # Create a Python function
    funktion create -f hello.py
    funktion url fn hello -o

