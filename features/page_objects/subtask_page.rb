module AvenueCode
    class SubTaskPage < BasePage
        ADD_SUBTASK   = '#add-subtask'
        MODAL         = '.modal-dialog'
        SUBTASK_FIELD = '#new_sub_task'
        DATE          = '#dueDate'
        CLOSE         = '.btn.btn-primary'

        def add_subtask_button
            page.find(ADD_SUBTASK)
        end
        
        def subtask_field 
            page.find(SUBTASK_FIELD)
        end

        def date
            page.find(DATE)
        end

        def close
            page.find(CLOSE)
        end
  end
end

World(AvenueCode)
