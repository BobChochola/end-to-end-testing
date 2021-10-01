HOW TO START
============

0. READ THE WHOLE README !!!!!!!

1. Make sure you have installed Git. Please refer to:

    https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

2. Ensure you have a nodejs environment. Please refer to the section below. Either "INSTALLATION OF NPM NVM and NODE" or "DOCKERIZED TEST"

3. git clone this respository

4. view the step list tools at:

    http://13.229.51.120/tools.html

WORKFLOW
========

1. QA transfer a REQUIREMENT into GHERKIN structure wtih the help of STEP LIST TOOLS 

2. JUNIOR QE put the GHERKIN in the CODE BASE also review the cases. REMEMBER to tag the cases with the ticketId

3. JUNIOR QE run and debug the cases using YOUR OWN selenium started with docker-compose (please check the setup steps later)

4. JUNIOR QE ensure the new cases are runn-able and all passed. REMEMBER: please keep the report of the new cases 

5. push a new branch (e.g. feature/ticketId) and create a pull request to develop branch

6. JUNIOR QE send the PR link also with the reports to the automatic-test channel and ask for review

7. SENIOR QE reviewed the PR and manage the merging

8. SENIOR QE regularly check the health of develop branch. if it's health, create a pull request to staing branch. 

9. SENIOR QEs double check the PR and merge it to staging

10. SENIOR QEs update the release note and version number. create a PR to master and release a new build

CODE REVIEW
===========
1. QA/QE focus on .feature file. can also check the elementId selector
1. QE/Engineer focus on if the cases are run-able 

HOW TO USE
==========

COMMAND
-------

1. run test and generate report. arguments: $1 = TEST_SERVER $2 = NODE_ENV $3 = TEST_CLIENT $4 = tags for cucumber

    npm run test local production chrome "@target"

2. host a the tool server. you can access through localhost:1234/tools.html AFTER you start-docker 

    npm run host-tools

3. to stop and remove all containers

    npm run stop-docker

4. to start docker-compose (selenium server environment)
  
    npm run start-docker
 
GIT COMMAND
-----------

1. create a branch and checkout to that branch

    git checkout -b feature/blahblahblah

2. add all change
    
    git add .

3. commit all change

    git commit -m 'some comment here'

4. push the commits to the remote

    git push 

5. push the current local branch to the remote.

    //git push -u REMOTE_NAME/REMOTE_BRANCH_NAME

    git push -u origin/master

6. checkout to a branch

    //git push -u LOCAL_BRANCH_NAME 

    git checkout master

7. pull remote branch to local. should fetch the remote before pull

    git fetch

    //git checkout --track REMOTE_NAME/REMOTE_BRANCH_NAME

    git checkout --track origin/feature/payment-test


CREATE A NEW PAGE
-----------------

1. mark sure the page class is XXXPage(with a suffix Page), otherwise, our framework wont recognize

2. copy the structure from another page object

3. ensure the 'require' is correct

4. ensure the class name is same as the file name 

5. ensure the module.exports is exporting the same class

6. remember to update the selector of 'id' in the elementId mapping

7. remember to update the url value

SAMPLE
-----------------

Sample can be set by:
1. config/sample - main store some helpers and enviroment-dependent data 
2. subClass of Page

Check handleSample in View.js.  
1. it will store and read the sample data from the global context (which is named "world" in cucumber) so that values can be pass along pages instances
2. it will first check if value is set, if so, cached value will be returned 
3. else it will try to get the value from the page.getSample method and set it to cache

For most of the cases, only getSample method should call config.sample so that the sample pipeline is clean


DEV. REMARK
-----------

## app
1. App is a class handling the whole framework. Some key phases' implementation are also inside.
2. Any other component setup can be implemented there and call in the prepare phase 
3. the instance of App (app) is exported to global, so it is accessible any where like other frameworks.

## models
1. they are the page objects.
2. Page should be the superclass of every page
3. every common features of page objects should be implemented in superclass.
4. Other page objects should be implemented like a config file.

## transformer
1. cucumber defineParameterType is not that user-friendly
2. A structure to handle the transform from a string to a value you want
3. there is a helper method app.trans('_transformerName_', key) to get the value
4. mainly used in step definition

## config
1. files under config directory and file matched the NODE_ENV in /env will be merged deeply.
2. the merged object can be accessed by app.config 

## features 
1. mainly follow the cucumber folder structure. 

## Account Manager
1. This class is used to manage accounts when protractor is doing parallel run.
2. Sometime you may force quit the test. there may be some .account.tmp file. feel free to remove them
3. PLEASE check /features/support/hooks for the logic flow

## Docker nodejs dev container
1. all test command will start inside the nodejs dev docker container because of the Image Path issue

SPECIAL CASES
=============

1. you can override exist() in page Object. can use checkText(elementId, 'EXPECTED_TEXT') to verify if page exist
