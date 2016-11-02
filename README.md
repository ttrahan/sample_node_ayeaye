[![Run Status](https://api.shippable.com/projects/56e93b119d043da07bdda580/badge?branch=master)](https://app.shippable.com/projects/56e93b119d043da07bdda580)

A simple Node.js application with tests. This branch demonstrates a git-flow
CI/CD use case as [diagrammed here](./public/resources/docs/git-flow-cicd-example.pdf)

**git-flow:**
* Developer creates new feature branch following naming convention 'feature-.\*'
* Developer commits code changes to feature branch on remote origin
* Trigger CI run that builds Docker image from feature branch and runs unit, API, and
E2E tests against it
  * Notify developer on success or failure
* Create pull request to merge feature branch with 'develop' branch
* Trigger CI run that builds Docker image from develop branch and runs unit, API, and
E2E tests against it
  * Upon success, notify developer -> developer deletes feature branch
  * Upon failure, notify developer -> developer resolves issues and repeats process
  beginning
* Developer creates Git Release and pushes to remote origin
* Trigger CI run to build Docker image for release with semantic version tag (x.x.x)
and push to docker registry
* Auto-generate a deployment manifest with newest release information
* Auto-deploy to Test environment
* Trigger automated functional tests against Test environment
* Conduct smoke/acceptance tests
  * Upon success, notify developer -> developer creates PR to master branch with tags
  * Upon failure, notify devloper -> developer resolves issues and restarts at beginning
  of flow
* Manually trigger deploy release v1.2.3 to Prod environment
