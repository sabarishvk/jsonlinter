## Synopsis

*jsonlinter* finds all the jsons in a given directory and lints them. 
This also includes a docker file which executes the code and shows a running example of the code.

## Code Example

sabarishvk@linux$ ./jsonlinter --jsoninput="/home/ubuntu/code/jsonlinter/test"

/home/ubuntu/code/jsonlinter/test/1/1.1/my.json : OK

/home/ubuntu/code/jsonlinter/test/1/1.2/my.json : OK

/home/ubuntu/code/jsonlinter/test/1/1.3/my.json : OK

/home/ubuntu/code/jsonlinter/test/1/1.4/my.json : ERROR

/home/ubuntu/code/jsonlinter/test/1/1.5/my.json : OK

/home/ubuntu/code/jsonlinter/test/2/my.json : OK

/home/ubuntu/code/jsonlinter/test/3/my.json : OK

/home/ubuntu/code/jsonlinter/test/4/my.json : OK

/home/ubuntu/code/jsonlinter/test/5/my.json : OK

Refer to /home/ubuntu/code/jsonlinter/linter/20160319123259_jsonlinter.log for complete details...


## Installation Steps

*Setting up the Environment:* 

Step1: Clone the repository to access the docker file
$ git clone https://github.com/sabarishvk/jsonlinter.git

Step2: Build the docker image (Assuming you have a docker environment setup.)
$ docker build -f Dockerfile

Step3: Run the container from the image created (ImageID can be fetched from 'docker images' command.)
$ docker run -i -t 1b807003610b  /bin/bash 

Step4: Start the Container (ContainerID can be fetched from 'docker ps -a' command.)
$ docker start 271ea3d3a799

Step5: Access the Ubuntu environment to run commands
$docker attacht 271ea3d3a799

Step6: The docker checks out the code from github in /opt/jsonlinter. 

Step8: Run the code with test jsons available in test directory
$ /opt/jsonlinter/linter/jsonlinter --jsoninput="/opt/jsonlinter/test"
