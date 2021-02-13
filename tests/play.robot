***Settings***
Documentation       Testando o player de paródias

Resource    ../resources/base.robot

***Test Cases***
Reproduzir a paródia Bug de Manhã
    Open Login Page
    Login With      papito@parodify.com     pwd123
    Logout Link Should Be Visible
    Go To Search Page
    Go to Sertanejo Category
    Open Album From                 Marcus e Debug
    Play Song                       Bug de Manhã
    Song Should Be Playing          Bug de Manhã
