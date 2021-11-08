*Settings*
Documentation       Authorization test suite


Resource    ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   End Session


*Test Cases*
User Login

    ${user}     Factory User Login
    Add User From Database    ${user}


    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}


Incorrect Pass
    [tags]      i_pass

    ${user}     Create Dictionary       email=danielagpaiva@gmail.com     password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.


User Not Found
    [tags]      user_404

    ${user}     Create Dictionary       email=danielagpaiva@404.net     password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.


Incorrect Email
    [tags]      i_email

    ${user}     Create Dictionary       email=danielagpaiva.com.br     password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Should Be Type Email
