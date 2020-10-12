# node-amplify

## What

Create a Docker image with latest AWS CLI and Nodejs LTS for AWS Amplify projects.

## Why

Amplify CI/CD uses Amazon Linux 2 build image by default, and this has an older Nodejs bundled.

Would rather not have to lower the minimum version of Nodejs in Amplify projects just to support CI/CD.

AWS Lambda Functions, which AWS Amplify CLI supports, default to the latest Nodejs LTS.

Supporting multiple Nodejs platforms inside the same AWS Amplify project locally seems pointless.

## Future

If Amplify CI/CD allowed you to target a few custom build images already, then this project could disappear.
