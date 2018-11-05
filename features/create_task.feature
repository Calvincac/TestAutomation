@todo_app @check_tasks

Feature: As a ToDo App user
         I should be able to create a task
         So I can manage my tasks

  @create_task
  Scenario: User should create a task by hitting enter in the Task Description field
    Given I'm already logged on the system 
    When I click on My Tasks button
    And I enter Create Users in the task description field and hit enter
    Then I should see Create Users task created in the Created Tasks list
    And I should see all the created tasks so far
    And I should see message Calvin Custodio's ToDo List on the top
    Then I remove Create Users task from Created Task list

  @create_task @add_task_button
  Scenario: User should create a task by clicking on Add Task button
    Given I'm already logged on the system 
    When I click on My Tasks button
    And I enter Clone repositories in the task description field and click on Add Task button
    Then I should see Clone repositories task created in the Created Tasks list
    And I remove Clone repositories task from Created Task list
