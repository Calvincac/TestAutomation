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

        def read_file(file_name)
            credentials = []
            File.readlines(file_name).each do |line|
                credentials << line
            end
            credentials
        end

        def credentials_from_file(file_name)
            credentials = read_file(file_name)
	        user = credentials.first.gsub('user:', '').delete("\n")
            password = credentials.last.gsub('password:', '')
            [user,password]
        end
  end
end

World(AvenueCode)