***Settings***
Documentation   Testes da página login

Resource    ../resources/base.robot

***Test Cases***
Login com Sucesso
    [tags]      smoke
    Open Login Page
    Login With      papito@parodify.com     pwd123
    Logout Link Should Be visible

Senha incorreta
    Open Login Page   
    Login With          papito@parodify.com     xpto123
    Alert should Be     Opps! Dados de acesso incorretos!

Email não existe
    Open Login Page  
    Login With          404@gmail.com     abc123
    Alert should Be     Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page    
    Login With          ${EMPTY}        pwd123
    Alert should Be     Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login With          papito@parodify.com     ${EMPTY}
    Alert should Be     Opps! Dados de acesso incorretos!



