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

*Assuming that you have docker environment available :* 
	


*Assuming you are running the code on Ubuntu-14 :*

*Step1 :* This step installs python and demjson python package that lints the json
`sudo apt-get -y update && sudo apt-get -y install python && sudo apt-get -y install python-pip && sudo pip install demjson`

*Step2:* Checkout the code
`git clone https://github.com/sabarishvk/jsonlinter.git`

*Step3:* Execute jsonlinter (assuming you downloaded the code in ""/home/ubuntu/code")
`/home/ubuntu/code/jsonlinter/linter/jsonlinter --jsoninput="/home/ubuntu/code/jsonlinter/test"`
