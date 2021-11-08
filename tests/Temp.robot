*Settings*
Documentation       Temp

Library       Collections

*Test Cases*
Trabalhando com Listas

    @{avengers}     Create List      Tony Stark      Kamalakhan      Steve Rogers

    Append To List      ${avengers}     Hulk    Black Widow


    FOR     ${a}    IN     @{avengers}

        Log to Console      ${a}
    
    END

    @{avengers2}     Create List     Tony Stark      Miss Marvel        Steve Rogers     Hulk   Black Widow

    Lists Should Be Equal       ${avengers}     ${avengers2}