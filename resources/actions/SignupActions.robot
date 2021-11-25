*Settings*
Documentation       Signup Actions

*Keywords*
Go To Signup Form
    Go To       ${BASE_URL}/signup

    Wait For Elements State     css=.signup-form h1     visible     5


Fill Signup Form
    [Arguments]     ${user}     

    Fill Text       id=name         ${user}[name]
    Fill Text       id=lastname     ${user}[lastname]
    Fill Text       id=email        ${user}[email]
    Fill Text       id=password     ${user}[password]

Submit Signup Form
    Click           css=button >> text=Cadastrar


User Should Be Registered

    ${message}      Set Variable        Agora você faz parte da Getgeeks. Tenha uma ótima experiência.


    Wait For Elements State     css=h1 >> text=Parabéns!      visible     5
    Wait For Elements State     css=p >> text=${message}      visible     5
    
