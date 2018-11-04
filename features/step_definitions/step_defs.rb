
home_page    = AvenueCode::HomePage.new
login_page   = AvenueCode::LoginPage.new
tasks_helper = AvenueCode::TasksHelper.new
tasks_page   = AvenueCode::TasksPage.new


Given /^I'm already logged on the system$/ do
	visit 'https://qa-test.avenuecode.com/'
	home_page.sign_in_button.click
	login_page.email.set('calvincac@hotmail.com')
	login_page.password.set('avenuecode')
	login_page.sign_in.click	
end

When /^i click on (.*) button$/ do |button|
	tasks_helper.click_button(button)
end

Then /^i should see all the created tasks so far$/ do
	page.should have_css tasks_page.class::TASKS_CREATED
end

Then /^i should see message (.*) on the top$/ do |message|
	expect(message).to eq tasks_page.header.text
end

And /^i enter (.*) in the task description field and hit enter$/ do |task_description|
	tasks_page.new_task.set(task_description)
	tasks_page.new_task.send_keys :enter
end

And /^i should see (.*) task created in the Created Tasks list$/ do |task_name|
	task = tasks_helper.text_found?(task_name, tasks_page.class::TASKS_CREATED)
	expect(task).to be true  
end

And /^i enter (.*) in the task description field and click on Add Task button$/ do |description|
	tasks_page.new_task.set(description)
	tasks_page.add_task.click
end

Then /^i should see a modal dialog$/ do
	byebug
end

Then /^i enter (.*) in subtask description field$/ do |description|
	byebug
end

Then /^i enter (.*) date$/ do |date|
	byebug
end

Then /^i should see subtask (.*) appended on the bottom part of the modal$/ do |subtask|
	byebug
end

And /^i click on Close button in the subtask modal dialog$/ do
	byebug
end

Then /^i should see (.*) created task(s) on Manage Subtasks button$/ do |amount|
	byebug
end
