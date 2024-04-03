*** Settings ***
Library            SeleniumLibrary

Resource    Elements/elements.robot
Resource    Page/page.robot
Resource    Steps/steps.robot

*** Variables ***
${BROWSER}    Chrome
${URL}        https://the-internet.herokuapp.com/challenging_dom