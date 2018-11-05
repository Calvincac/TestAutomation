@todo_app @check_tasks

Feature: As a ToDo App user
         I should be able to create a task
         So I can manage my tasks

  @create_task
  Scenario: User should create a task by hitting enter in the Task Description field
    Given I'm already logged on the system 
    When i click on My Tasks button
    And i enter Create Users in the task description field and hit enter
    Then i should see Create Users task created in the Created Tasks list
    And i should see all the created tasks so far
    And i should see message Calvin Custodio's ToDo List on the top
    Then i remove Create Users task from Created Task list

  @create_task @add_task_button
  Scenario: User should create a task by clicking on Add Task button
    Given I'm already logged on the system 
    When i click on My Tasks button
    And i enter Clone repositories in the task description field and click on Add Task button
    Then i should see Clone repositories task created in the Created Tasks list
    And i remove Clone repositories task from Created Task list
