# Deply a simple static website.

### Run locally 
1. Clone the repo in your local machine: git clone [git@github.com:alessonviana/deploy_example.git](https://github.com/alessonviana/deploy_example.git)
2. Build the Docker image: docker build -t simple-html-site:latest .
3. Run the image: docker run -d -p 80:80 simple-html-site:latest
4. Open your browser and type: localhost:80 


### Automation run
There is one file on /.github/workflows/deploy.yaml
This Action will build this image, send it to the docker registry, and then deploy this image in one remote machine.
