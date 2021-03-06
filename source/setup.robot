*** Settings ***

Library  Selenium2Screenshots

Resource  plone/app/robotframework/server.robot

*** Keywords ***

Setup
   Setup Plone site  plone.app.robotframework.testing.AUTOLOGIN_ROBOT_TESTING
   Set window size  640  1024

Test Setup
   Import library  Remote  ${PLONE_URL}/RobotRemote
   Enable autologin as  Site Administrator
   Set autologin username  test-user-1

Test Teardown
   Set Zope layer  plone.app.robotframework.testing.AUTOLOGIN_ROBOT_TESTING
   ZODB TearDown
   ZODB SetUp

Teardown
   Teardown Plone Site
