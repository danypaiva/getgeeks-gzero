*Settings*
Documentation       Basetest

Library         Browser
Library         Collections
Library         factories/Users.py

Resource        actions/_SharedActions.robot
Resource        actions/SignupActions.robot
Resource        actions/AuthActions.robot
Resource        actions/GeekActions.robot

Resource        Database.robot
Resource        Helpers.robot

*Variables*
${BASE_URL}     https://getgeek-daniela.herokuapp.com

*Keywords*
Start Session
    New Browser        chromium     headless=False      slowMo=00:00:00.5
    New Page           ${BASE_URL}


End Session
    Take Screenshot     fullPage=true

