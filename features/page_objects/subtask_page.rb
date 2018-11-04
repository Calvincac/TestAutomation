module AvenueCode
    class SubTaskPage < BasePage
        ADD_SUBTASK = '#add-subtask'

        def add_subtask_button
            page.find(ADD_SUBTASK)
        end
  end
end

World(AvenueCode)
