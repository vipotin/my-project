# Template project for deploying React app to Heroku with Terraform and GitHub Actions

This project uses `npx create-react-app`application as a template for web app. 
Terraform handles Infrastructure as Code. Terraform creates a new application resource to Heroku and deploys app to this instance.
GitHub Actions runs build, test, and Terraform actions.
