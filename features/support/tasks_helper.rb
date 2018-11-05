module AvenueCode
    class TasksHelper
        include RSpec::Matchers
        include Capybara::DSL

        def click_button(name)
            tasks_page   = AvenueCode::TasksPage.new 
            home_page    = AvenueCode::HomePage.new
            subtask_page = AvenueCode::SubTaskPage.new 

            case name
            when 'My Tasks'
                home_page.my_tasks_button.click
            when 'Manage Subtasks'
                tasks_page.manage_subtasks_button.click
            when 'Add Subtask'
                subtask_page.add_subtask_button.click
            else
              raise "Wrong button name"
            end
        end

        def text_found?(text, selector)
              elements_list = all(selector)           
              elements_list.each do |element| 
                  if element.text == text
                      return true
                  end
              end
            return false            
        end

        def return_element(text, selector)
            elements_list = all(selector)           
            elements_list.each do |element| 
                if element.text.include? text 
                    return element
                end
            end
        end
  end
end

World(AvenueCode)