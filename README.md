# Kubernetes Sandbox
This is a sandbox for learning how to properly wield Kubernetes for hosting services, and the tooling around it.

# Resources
| Path        | Type                            | Purpose                                                                      |
| ----------- | ------------------------------- | ---------------------------------------------------------------------------- |
| src/app     | HTML and other app service code | The application service to run                                               |
| src/.docker | Docker                          | Dockerfile definitions for the application                                   |
| src/.k8s    | Kubernetes                      | Kubernetes service, deployment, and pod definitions                          |
| src/.infra  | Terraform                       | Terraform definitions for the AWS infrastructure used to run the application |
# Pipelines
All CI/CD actions are performed using GitHub Actions.

| Action           | Type    | Purpose                                                                                                                                                                 |
| ---------------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| application-ci   | Build   | Continuous integration pipeline for the application.  Pulls down code, builds, tests, and then pushes a docker image of the built application to the container registry |
| terraform-ci     | Build   | Continuous integratioln pipeline for the infrastructure code.  Pulls down the code and validates to ensure the HCL syntax is correct                                    |
| terraform-deploy | Release | Runs the terraform code in the src/.infra folder to build out the AWS infrastructure needed                                                                             |
| k8s-deploy       | Release | Executes the Kubernetes deployment and service definition on the EKS instance built out by the terraform-deploy code                                                    |
