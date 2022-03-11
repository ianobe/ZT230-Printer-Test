title Printer Test
set testPrint="Test-Label.prn" 
set Log="log.txt"
set DateTimeName=%date%%time% %username%

:Main
@ECHO OFF
CLS
ECHO [1;45mWelcome to the Printer Quality Check Main Menu[0m
ECHO [1;44mWhat Singles Area do you want to test?[0m
ECHO 1. [1;94mReds and Singles[0m
ECHO 2. [1;91mReso Overflow[0m
ECHO 3. [1;93mPanda[0m
ECHO 4. [1;96mShipdock[0m
ECHO 5. [1;95mBy Station Number[0m
ECHO 6. [1;92mExit[0m

CHOICE /C 123456 /M "Enter your choice:"

IF ERRORLEVEL 6 GOTO Exit
IF ERRORLEVEL 5 GOTO Single
IF ERRORLEVEL 4 GOTO Shipdock
IF ERRORLEVEL 3 GOTO Panda
IF ERRORLEVEL 2 GOTO Reso
IF ERRORLEVEL 1 GOTO Start


:Start
@ECHO OFF
CLS
ECHO [1;44mWhat Singles Line do you want to test?[0m
ECHO 1. [1;94mLine 1 Stations 1-11[0m
ECHO 2. [1;94mLine 2 Stations 18-28[0m
ECHO 3. [1;94mLine 3 Stations 29-35,38,39[0m
ECHO 4. [1;94mLine 4 Stations 46,47,50-56[0m
ECHO 5. [1;94mLine 5 Stations 57-63,66,67[0m
ECHO 6. [1;94mLine 6 Stations 74,75,78-84[0m
ECHO 7. [1;91mAll Reds Stations 85-98[0m
ECHO 8. [1;91mReds Lane 1 85-90[0m
ECHO 9. [1;91mReds Lane 2 91-98[0m
ECHO A. [1;96mAll[0m
ECHO X. [1;92mMain Menu[0m



CHOICE /C 123456789AX /M "Enter your choice:"


IF ERRORLEVEL 11 GOTO Main
IF ERRORLEVEL 10 GOTO All
IF ERRORLEVEL 9 GOTO Reds2
IF ERRORLEVEL 8 GOTO Reds1
IF ERRORLEVEL 7 GOTO Reds
IF ERRORLEVEL 6 GOTO Line6
IF ERRORLEVEL 5 GOTO Line5
IF ERRORLEVEL 4 GOTO Line4
IF ERRORLEVEL 3 GOTO Line3
IF ERRORLEVEL 2 GOTO Line2
IF ERRORLEVEL 1 GOTO Line1

:Reso
Echo [1;41mPrinting to Reso[0m
Echo %DateTimeName% Reso >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single223"
copy /b %testPrint% \\frowpprnt002\"Frow-Single224"
copy /b %testPrint% \\frowpprnt002\"Frow-Single225"
copy /b %testPrint% \\frowpprnt002\"Frow-Single226"
copy /b %testPrint% \\frowpprnt002\"Frow-Single227"
copy /b %testPrint% \\frowpprnt002\"Frow-Single228"
copy /b %testPrint% \\frowpprnt002\"Frow-Single229"
copy /b %testPrint% \\frowpprnt002\"Frow-Single230"

ECHO [1;92mPrinting Complete on[0m [1;91mReso[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Main

:Panda

Echo [1;43mPrinting to Panda[0m
Echo %DateTimeName% Panda >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single100"
copy /b %testPrint% \\frowpprnt002\"Frow-Single101"
copy /b %testPrint% \\frowpprnt002\"Frow-Single105"


ECHO [1;92mPrinting Complete on[0m [1;94mPanda[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Main


:Shipdock

Echo [1;46mPrinting to Shipdock[0m
Echo %DateTimeName% Shipdock >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single200"
copy /b %testPrint% \\frowpprnt002\"Frow-Single201"
copy /b %testPrint% \\frowpprnt002\"Frow-Single202"
copy /b %testPrint% \\frowpprnt002\"Frow-Single203"
copy /b %testPrint% \\frowpprnt002\"Frow-Single204"
copy /b %testPrint% \\frowpprnt002\"Frow-Single205"
copy /b %testPrint% \\frowpprnt002\"Frow-Single206"
copy /b %testPrint% \\frowpprnt002\"Frow-Single207"
copy /b %testPrint% \\frowpprnt002\"Frow-Single213"
copy /b %testPrint% \\frowpprnt002\"Frow-Single214"
copy /b %testPrint% \\frowpprnt002\"Frow-Single215"
copy /b %testPrint% \\frowpprnt002\"Frow-Single216"
copy /b %testPrint% \\frowpprnt002\"Frow-Single217"
copy /b %testPrint% \\frowpprnt002\"Frow-Single218"
copy /b %testPrint% \\frowpprnt002\"Frow-Single219"
copy /b %testPrint% \\frowpprnt002\"Frow-Single220"
copy /b %testPrint% \\frowpprnt002\"Frow-Single221"
copy /b %testPrint% \\frowpprnt002\"Frow-Single222"

ECHO [1;92mPrinting Complete on[0m [1;96mShipdock[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Main


:Single
@ECHO OFF
CLS
:Print Different
ECHO [1;45mPlease enter the 3 digit station number: [0m
set /p input=""
ECHO [1;45mPrinting to Frow-Single%input%[0m
:Reprint
CLS
copy /b %testPrint% \\frowpprnt002\"Frow-Single%input%"
Echo %DateTimeName% Single %input% >> %Log%
ECHO [1;92mPrinting Complete on[0m [1;95mFrow-Single%input%[0m
ECHO 1. [1;93mReprint[0m
ECHO 2. [1;95mPrint to new station[0m
ECHO 3. [1;92mMain Menu[0m



CHOICE /C 123 /M "Enter your choice:"

IF ERRORLEVEL 3 GOTO Main
IF ERRORLEVEL 2 GOTO Single
IF ERRORLEVEL 1 GOTO Reprint


:Line1
Echo [1;44mPrinting to Line 1[0m
Echo %DateTimeName% Singles Line 1 (01 - 11) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single001"
copy /b %testPrint% \\frowpprnt002\"Frow-Single002"
copy /b %testPrint% \\frowpprnt002\"Frow-Single003"
copy /b %testPrint% \\frowpprnt002\"Frow-Single004"
copy /b %testPrint% \\frowpprnt002\"Frow-Single005"
copy /b %testPrint% \\frowpprnt002\"Frow-Single006"
copy /b %testPrint% \\frowpprnt002\"Frow-Single007"
copy /b %testPrint% \\frowpprnt002\"Frow-Single008"
copy /b %testPrint% \\frowpprnt002\"Frow-Single009"
copy /b %testPrint% \\frowpprnt002\"Frow-Single010"
copy /b %testPrint% \\frowpprnt002\"Frow-Single011"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 1 Stations 1-11[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start



:Line2
Echo [1;44mPrinting to Line 2[0m
Echo %DateTimeName% Singles Line 2 (18 - 28) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single018"
copy /b %testPrint% \\frowpprnt002\"Frow-Single019"
copy /b %testPrint% \\frowpprnt002\"Frow-Single020"
copy /b %testPrint% \\frowpprnt002\"Frow-Single021"
copy /b %testPrint% \\frowpprnt002\"Frow-Single022"
copy /b %testPrint% \\frowpprnt002\"Frow-Single023"
copy /b %testPrint% \\frowpprnt002\"Frow-Single024"
copy /b %testPrint% \\frowpprnt002\"Frow-Single025"
copy /b %testPrint% \\frowpprnt002\"Frow-Single026"
copy /b %testPrint% \\frowpprnt002\"Frow-Single027"
copy /b %testPrint% \\frowpprnt002\"Frow-Single028"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 2 Stations 18-28[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Line3
Echo [1;44mPrinting to Line 3[0m
Echo %DateTimeName% Singles Line 3 (29 - 39) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single029"
copy /b %testPrint% \\frowpprnt002\"Frow-Single030"
copy /b %testPrint% \\frowpprnt002\"Frow-Single031"
copy /b %testPrint% \\frowpprnt002\"Frow-Single032"
copy /b %testPrint% \\frowpprnt002\"Frow-Single033"
copy /b %testPrint% \\frowpprnt002\"Frow-Single034"
copy /b %testPrint% \\frowpprnt002\"Frow-Single035"
copy /b %testPrint% \\frowpprnt002\"Frow-Single038"
copy /b %testPrint% \\frowpprnt002\"Frow-Single039"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 3 Stations 29-35,38,39[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Line4
Echo [1;44mPrinting to Line 4[0m
Echo %DateTimeName% Singles Line 4 (46 - 56) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single046"
copy /b %testPrint% \\frowpprnt002\"Frow-Single047"
copy /b %testPrint% \\frowpprnt002\"Frow-Single050"
copy /b %testPrint% \\frowpprnt002\"Frow-Single051"
copy /b %testPrint% \\frowpprnt002\"Frow-Single052"
copy /b %testPrint% \\frowpprnt002\"Frow-Single053"
copy /b %testPrint% \\frowpprnt002\"Frow-Single054"
copy /b %testPrint% \\frowpprnt002\"Frow-Single055"
copy /b %testPrint% \\frowpprnt002\"Frow-Single056"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 4 Stations 46,47,50-56[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Line5
Echo [1;44mPrinting to Line 5[0m
Echo %DateTimeName% Singles Line 5 (57 - 67) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single057"
copy /b %testPrint% \\frowpprnt002\"Frow-Single058"
copy /b %testPrint% \\frowpprnt002\"Frow-Single059"
copy /b %testPrint% \\frowpprnt002\"Frow-Single060"
copy /b %testPrint% \\frowpprnt002\"Frow-Single061"
copy /b %testPrint% \\frowpprnt002\"Frow-Single062"
copy /b %testPrint% \\frowpprnt002\"Frow-Single063"
copy /b %testPrint% \\frowpprnt002\"Frow-Single066"
copy /b %testPrint% \\frowpprnt002\"Frow-Single067"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 5 Stations 57-63,66,67[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Line6
Echo [1;44mPrinting to Line 6[0m
Echo %DateTimeName% Singles Line 2 (74 - 84) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single074"
copy /b %testPrint% \\frowpprnt002\"Frow-Single075"
copy /b %testPrint% \\frowpprnt002\"Frow-Single078"
copy /b %testPrint% \\frowpprnt002\"Frow-Single079"
copy /b %testPrint% \\frowpprnt002\"Frow-Single080"
copy /b %testPrint% \\frowpprnt002\"Frow-Single081"
copy /b %testPrint% \\frowpprnt002\"Frow-Single082"
copy /b %testPrint% \\frowpprnt002\"Frow-Single083"
copy /b %testPrint% \\frowpprnt002\"Frow-Single084"
ECHO [1;92mPrinting Complete on[0m [1;94mLine 6 Stations 74,75,78-84[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Reds
Echo [1;41mPrinting to Reds[0m
Echo %DateTimeName% Reds >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single085"
copy /b %testPrint% \\frowpprnt002\"Frow-Single086"
copy /b %testPrint% \\frowpprnt002\"Frow-Single087"
copy /b %testPrint% \\frowpprnt002\"Frow-Single088"
copy /b %testPrint% \\frowpprnt002\"Frow-Single089"
copy /b %testPrint% \\frowpprnt002\"Frow-Single090"
copy /b %testPrint% \\frowpprnt002\"Frow-Single091"
copy /b %testPrint% \\frowpprnt002\"Frow-Single092"
copy /b %testPrint% \\frowpprnt002\"Frow-Single093"
copy /b %testPrint% \\frowpprnt002\"Frow-Single094"
copy /b %testPrint% \\frowpprnt002\"Frow-Single095"
copy /b %testPrint% \\frowpprnt002\"Frow-Single096"
copy /b %testPrint% \\frowpprnt002\"Frow-Single097"
copy /b %testPrint% \\frowpprnt002\"Frow-Single098"

ECHO [1;92mPrinting Complete on[0m [1;91mReds Stations 85-98[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Reds1
Echo %DateTimeName% Reds Line 1 (85 - 90) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single085"
copy /b %testPrint% \\frowpprnt002\"Frow-Single086"
copy /b %testPrint% \\frowpprnt002\"Frow-Single087"
copy /b %testPrint% \\frowpprnt002\"Frow-Single088"
copy /b %testPrint% \\frowpprnt002\"Frow-Single089"
copy /b %testPrint% \\frowpprnt002\"Frow-Single090"

ECHO [1;92mPrinting Complete on[0m [1;91mReds Stations 85-90[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Reds2
Echo %DateTimeName% Reds Line 2 (91 - 98) >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single091"
copy /b %testPrint% \\frowpprnt002\"Frow-Single092"
copy /b %testPrint% \\frowpprnt002\"Frow-Single093"
copy /b %testPrint% \\frowpprnt002\"Frow-Single094"
copy /b %testPrint% \\frowpprnt002\"Frow-Single095"
copy /b %testPrint% \\frowpprnt002\"Frow-Single096"
copy /b %testPrint% \\frowpprnt002\"Frow-Single097"
copy /b %testPrint% \\frowpprnt002\"Frow-Single098"

ECHO [1;92mPrinting Complete on[0m [1;91mReds Stations 91-98[0m
CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:All
CHOICE /C YN /M "Are you sure?"

IF ERRORLEVEL 2 GOTO Start
IF ERRORLEVEL 1 GOTO AllCheck2

:AllCheck2
CHOICE /C YN /M "Are you really really sure?"

IF ERRORLEVEL 2 GOTO Start
IF ERRORLEVEL 1 GOTO RealAll

:RealAll
Echo [1;46mPrinting to All[0m
Echo %DateTimeName% Singles All >> %Log%
copy /b %testPrint% \\frowpprnt002\"Frow-Single001"
copy /b %testPrint% \\frowpprnt002\"Frow-Single002"
copy /b %testPrint% \\frowpprnt002\"Frow-Single003"
copy /b %testPrint% \\frowpprnt002\"Frow-Single004"
copy /b %testPrint% \\frowpprnt002\"Frow-Single005"
copy /b %testPrint% \\frowpprnt002\"Frow-Single006"
copy /b %testPrint% \\frowpprnt002\"Frow-Single007"
copy /b %testPrint% \\frowpprnt002\"Frow-Single008"
copy /b %testPrint% \\frowpprnt002\"Frow-Single009"
copy /b %testPrint% \\frowpprnt002\"Frow-Single010"
copy /b %testPrint% \\frowpprnt002\"Frow-Single011"
copy /b %testPrint% \\frowpprnt002\"Frow-Single018"
copy /b %testPrint% \\frowpprnt002\"Frow-Single019"
copy /b %testPrint% \\frowpprnt002\"Frow-Single020"
copy /b %testPrint% \\frowpprnt002\"Frow-Single021"
copy /b %testPrint% \\frowpprnt002\"Frow-Single022"
copy /b %testPrint% \\frowpprnt002\"Frow-Single023"
copy /b %testPrint% \\frowpprnt002\"Frow-Single024"
copy /b %testPrint% \\frowpprnt002\"Frow-Single025"
copy /b %testPrint% \\frowpprnt002\"Frow-Single026"
copy /b %testPrint% \\frowpprnt002\"Frow-Single027"
copy /b %testPrint% \\frowpprnt002\"Frow-Single028"
copy /b %testPrint% \\frowpprnt002\"Frow-Single029"
copy /b %testPrint% \\frowpprnt002\"Frow-Single030"
copy /b %testPrint% \\frowpprnt002\"Frow-Single031"
copy /b %testPrint% \\frowpprnt002\"Frow-Single032"
copy /b %testPrint% \\frowpprnt002\"Frow-Single033"
copy /b %testPrint% \\frowpprnt002\"Frow-Single034"
copy /b %testPrint% \\frowpprnt002\"Frow-Single035"
copy /b %testPrint% \\frowpprnt002\"Frow-Single038"
copy /b %testPrint% \\frowpprnt002\"Frow-Single039"
copy /b %testPrint% \\frowpprnt002\"Frow-Single046"
copy /b %testPrint% \\frowpprnt002\"Frow-Single047"
copy /b %testPrint% \\frowpprnt002\"Frow-Single050"
copy /b %testPrint% \\frowpprnt002\"Frow-Single051"
copy /b %testPrint% \\frowpprnt002\"Frow-Single052"
copy /b %testPrint% \\frowpprnt002\"Frow-Single053"
copy /b %testPrint% \\frowpprnt002\"Frow-Single054"
copy /b %testPrint% \\frowpprnt002\"Frow-Single055"
copy /b %testPrint% \\frowpprnt002\"Frow-Single056"
copy /b %testPrint% \\frowpprnt002\"Frow-Single057"
copy /b %testPrint% \\frowpprnt002\"Frow-Single058"
copy /b %testPrint% \\frowpprnt002\"Frow-Single059"
copy /b %testPrint% \\frowpprnt002\"Frow-Single060"
copy /b %testPrint% \\frowpprnt002\"Frow-Single061"
copy /b %testPrint% \\frowpprnt002\"Frow-Single062"
copy /b %testPrint% \\frowpprnt002\"Frow-Single063"
copy /b %testPrint% \\frowpprnt002\"Frow-Single066"
copy /b %testPrint% \\frowpprnt002\"Frow-Single067"
copy /b %testPrint% \\frowpprnt002\"Frow-Single074"
copy /b %testPrint% \\frowpprnt002\"Frow-Single075"
copy /b %testPrint% \\frowpprnt002\"Frow-Single078"
copy /b %testPrint% \\frowpprnt002\"Frow-Single079"
copy /b %testPrint% \\frowpprnt002\"Frow-Single080"
copy /b %testPrint% \\frowpprnt002\"Frow-Single081"
copy /b %testPrint% \\frowpprnt002\"Frow-Single082"
copy /b %testPrint% \\frowpprnt002\"Frow-Single083"
copy /b %testPrint% \\frowpprnt002\"Frow-Single084"
copy /b %testPrint% \\frowpprnt002\"Frow-Single085"
copy /b %testPrint% \\frowpprnt002\"Frow-Single086"
copy /b %testPrint% \\frowpprnt002\"Frow-Single087"
copy /b %testPrint% \\frowpprnt002\"Frow-Single088"
copy /b %testPrint% \\frowpprnt002\"Frow-Single089"
copy /b %testPrint% \\frowpprnt002\"Frow-Single090"
copy /b %testPrint% \\frowpprnt002\"Frow-Single091"
copy /b %testPrint% \\frowpprnt002\"Frow-Single092"
copy /b %testPrint% \\frowpprnt002\"Frow-Single093"
copy /b %testPrint% \\frowpprnt002\"Frow-Single094"
copy /b %testPrint% \\frowpprnt002\"Frow-Single095"
copy /b %testPrint% \\frowpprnt002\"Frow-Single096"
copy /b %testPrint% \\frowpprnt002\"Frow-Single097"
copy /b %testPrint% \\frowpprnt002\"Frow-Single098"
ECHO [1;92mPrinting Complete on[0m [1;96mAll Stations[0m

CHOICE /C YN /M "Do you want continue?"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Start

:Exit
CHOICE /C YN /M "Are you sure you want to exit?"

IF ERRORLEVEL 2 GOTO Main
IF ERRORLEVEL 1 GOTO End



:End
