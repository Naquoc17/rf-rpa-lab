*** Settings ***
Documentation   Insert the sales data for the week and export it as a PDF.
Library   Browser

*** Variables ***
${URL}  https://robotsparebinindustries.com/

*** Tasks ***
Insert the sales data for the week and export it as a PDF
  Open The Intranet Website
  Log In
  Wait For Elements State   id=sales-form   visible
  [Teardown]  Close Browser

*** Keywords ***
Open The Intranet Website
  New Browser   chromium    headless=False    slowMo=100ms
  New Page    ${URL}

Log In
  Fill Text   css=#username   maria
  Fill Text   css=#password   thoushallnotpas
  Click   button:text('Log in')
