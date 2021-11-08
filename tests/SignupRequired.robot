*Settings*
Documentation       Signup Required Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Suite Setup        Signup Without Fill Form
Test Teardown     End Session

*Test Cases*
Name is Required
    Alert Span Should Be     Cadê o seu nome?

Lastname is Required
    Alert Span Should Be    E o sobrenome?

Email is Required
    Alert Span Should Be    O email é importante também!

Password is Required
    Alert Span Should Be    Agora só falta a senha!


*Keywords*
Signup Without Fill Form

    Start Session
    Go To Signup Form
    Submit Signup Form
    
    
    
    