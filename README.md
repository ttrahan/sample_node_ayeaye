[![Run Status](https://api.shippable.com/projects/56e93b119d043da07bdda580/badge?branch=master)](https://app.shippable.com/projects/56e93b119d043da07bdda580)

A simple Node.js application with tests. This branch demonstrates the following
use case.


**amazon-ecs:**
* CI run that builds and pushes a Docker image to Amazon EC/2 Container Registry (ECR)
* Auto-generate an updated deployment manifest
* Auto-deploy to a Test environment in Amazon EC/2 Container Service (ECS)   
  * Deployed containers will automatically register listeners with AWS Application Load Balancer
* Manual trigger to create a release candidate for Prod environment
* Manual deploy to Prod environment in Amazon ECS   
  * Deployed containers will automatically register listeners with AWS Application Load Balancer
