*Settings*
Documentation       BeGeek test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       End Session

*Test Cases*
Be a Geek

    ${user}     Factory User    be_geek
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Geek Form Shoul Be Success

Short Description

    ${user}     Factory User    short_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no minimo 80 caracteres


