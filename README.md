# A template repo for data science projects

This can be used to setup a basic data science development environment. The structure is setup to allow for easy integration with Docker.

To use:

 - either download the zip, create a new repo from this template, or create using `project_creator init pwithams/project-template`.
 - create and activate a virtual environment, i.e. `virtualenv python3.8 venv && source venv/bin/activate`
 - install the standard pythonn dev tools using `pip install -r dev_requirements.txt`
 - inside `notebooks/` run `jupyter notebook` to start using notebooks
 - to your code as part of a container, make sure your requirements are up to date in `requirements.txt` and run `make` or `make.bat` depending on your OS
 - you can also run the docker commands manually by inspecting the contents of `Makefile`


The following is a README template.


# Project name

Project description

## Hypothesis

Explanation of the scientific approach taken in this project

### Stage 1

Explanation of the first stage of development

### Stage N

Explanation of the nth stage of development

## Development

Explanation of how to setup and use this project as a new data scientist

## Deployment

Explanation of how this is or can be deployed
