@todo_app @check_subtasks

Feature: As a ToDo App user
         I should be able to create a subtask
         So I can break down my tasks in smaller pieces

  @create_subtask
  Scenario: User should create a subtask
    Given I'm already logged on the system 
    When I click on My Tasks button
    And I enter Add Integration to API in the task description field and hit enter
    When I click on Manage Subtasks button
    Then I should see a modal dialog
    When I enter Check API Doc in subtask description field
    And I enter 20/11/1993 date
    And I click on Add Subtask button
    Then I should see subtask Check API Doc appended on the bottom part of the modal
    And I click on Close button in the subtask modal dialog
    And I remove Integration to API task from Created Task list
    

  @manage_subtasks
  Scenario: User should see the number of subtasks created on Manage Subtasks button
    Given I'm already logged on the system 
    When I click on My Tasks button
    And I enter Automate Features in the task description field and hit enter
    When I click on Manage Subtasks button
    Then I should see a modal dialog
    When I enter Automate Printer Replacement in subtask description field
    And I enter 20/11/93 date
    And I click on Add Subtask button
    Then I should see subtask Automate Printer Replacement appended on the bottom part of the modal
    When I click on Close button in the subtask modal dialog
    Then I should see 1 created tasks on Manage Subtasks button
    And I remove Automate Features task from Created Task list
    

