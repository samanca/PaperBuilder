# PaperBuilder
The container requires your paper directory to contain a make file (e.g., Makefile) and 
have the default target building the paper. If that is not the case, change the build 
script in this directory and update the make command accordingly.

First step is to create a symbolic link to your paper directory using the command below:
```bash
ln -s `realpath YOUR_PAPER_DIRECTORY` paper
```

Next, run the command below to create the Docker image:
```bash
docker build --tag paper .
```

Finally, create a container from the image in privileged mode using the following command:
```bash
docker run --privileged paper
```

Building the paper is as easy as restarting the container! :)
