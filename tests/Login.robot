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

Login Without Email
    [tags]      no_email

    ${user}     Create Dictionary       email=                       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be    E-mail obrigatório

Login Without Password
    [tags]      no_pass
    
    ${user}     Create Dictionary       email=danielagpaiva@gmail.com           password=

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be    Senha obrigatória

Required Fields
    [tags]      reqfields

    @{expected_alerts}          Create List
    ...                         E-mail obrigatório
    ...                         Senha obrigatória
    
    ${user}     Create Dictionary       email=                          password=

    Go To Login Page
    Fill Credentials             ${user}
    Submit Credentials
    Alert Spans Should Be        ${expected_alerts}    
      