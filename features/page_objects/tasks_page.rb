module AvenueCode
    class TasksPage < BasePage
        MANAGE_SUBTASKS = '.btn.btn-xs.btn-primary'
        TASKS_CREATED   = '.task_body'
        TASK_FIELD      = '#new_task'
        HEADER          = '/html/body/div[1]/h1'
        ADD_TASK        = 'span[ng-click="addTask()"]'

        def manage_subtasks_button
            page.find(MANAGE_SUBTASKS)
        end
        
        def new_task
            page.find(TASK_FIELD)
        end

        def header 
            page.find(:xpath, HEADER)
        end

        def add_task 
            page.find(ADD_TASK)
        end
  end
end

World(AvenueCode)
