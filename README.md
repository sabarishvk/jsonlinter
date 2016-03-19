## Synopsis

*jsonlinter* finds all the jsons in a given directory and lints them. 
This also includes a docker file which executes the code and shows a running example of the code.

## Code Example

sabarishvk@linux$ /opt/jsonlinter/linter/jsonlinter --jsoninput="/opt/jsonlinter/test"

/opt/jsonlinter/test/1/1.1/my.json : OK

/opt/jsonlinter/test/1/1.2/my.json : OK

/opt/jsonlinter/test/1/1.3/my.json : OK

/opt/jsonlinter/test/1/1.4/my.json : ERROR

/opt/jsonlinter/test/1/1.5/my.json : OK

/opt/jsonlinter/test/2/my.json : OK

/opt/jsonlinter/test/3/my.json : OK

/opt/jsonlinter/test/4/my.json : OK

/opt/jsonlinter/test/5/my.json : OK

Refer to /opt/jsonlinter/linter/20160319123259_jsonlinter.log for complete details...


## Installation Steps

*Setting up the Environment:* 

Step1: Clone the repository to access the docker file

$ git clone https://github.com/sabarishvk/jsonlinter.git

Step2: Build the docker image (Assuming you have a docker environment setup.)

$ cd jsonlinter ; docker build .

Step3: Run the container from the image created (ImageID can be fetched from 'docker images' command.)

$ docker run -i -t 1b807003610b  /bin/bash 

Step4: Run the code with test jsons available in test directory

$ /opt/jsonlinter/linter/jsonlinter --jsoninput="/opt/jsonlinter/test"
