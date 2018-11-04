@todo_app @check_tasks

Feature: As a ToDo App user
         I should be able to create a task
         So I can manage my tasks

  @check_tasks_created
  Scenario: User should see all created tasks
    Given I'm already logged on the system 
    When i click on My Tasks button
    Then i should see all the created tasks so far
    And i should see message Hey John, this is your todo list for today: on the top

  @create_task
  Scenario: User should create a task by hitting enter in the Task Description Field
    Given I'm already logged on the system 
    When i click on My Tasks button
    Then i should see all the created tasks so far
    And i enter Migrate users in the task description field and hit enter
    Then i should see Migrate users task created in the Created Tasks list

  @create_task @add_task_button
  Scenario: User should create a task by clicking on Add Task button
    Given I'm already logged on the system 
    When i click on My Tasks button
    Then i should see all the created tasks so far
    And i enter Clone repositories in the task description field and click on Add Task button
    Then i should see Clone repositories task created in the Created Tasks list
