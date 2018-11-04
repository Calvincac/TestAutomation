@todo_app @check_subtasks

Feature: As a ToDo App user
         I should be able to create a subtask
         So I can break down my tasks in smaller pieces

  @create_subtask
  Scenario: User should create a subtask
    Given I'm already logged on the system 
    When i click on My Tasks button
    And i enter Add Integration to API in the task description field and hit enter
    When i click on Manage Subtasks button
    Then i should see a modal dialog
    When i enter Check API Doc in subtask description field
    And i enter 20/11/1993 date
    And i click on Add Subtask button
    Then i should see subtask Check API Doc appended on the bottom part of the modal

  @manage_subtasks
  Scenario: User should see the number of subtasks created on Manage Subtasks button
    Given I'm already logged on the system 
    When i click on My Tasks button
    And i enter Automate Features in the task description field and hit enter
    When i click on Manage Subtasks button
    Then i should see a modal dialog
    When i enter Automate feature one in subtask description field
    And i enter 20/11/93 date
    And i click on Add Subtask button
    Then i should see subtask Automate feature one appended on the bottom part of the modal
    When i click on Close button in the subtask modal dialog
    Then i should see 1 created task(s) on Manage Subtasks button

