
home_page     = AvenueCode::HomePage.new
login_page    = AvenueCode::LoginPage.new
tasks_helper  = AvenueCode::TasksHelper.new
tasks_page    = AvenueCode::TasksPage.new
subtasks_page = AvenueCode::SubTaskPage.new


Given /^I'm already logged on the system$/ do
	credentials = tasks_helper.credentials_from_file('user_and_password.txt')

	visit 'https://qa-test.avenuecode.com/'
	home_page.sign_in_button.click
	login_page.email.set(credentials.first)
	login_page.password.set(credentials.last)
	login_page.sign_in.click	
end

When /^I click on (.*) button$/ do |button|
	tasks_helper.click_button(button)
end

Then /^I should see all the created tasks so far$/ do
	page.should have_css tasks_page.class::TASKS_CREATED
end

Then /^I should see message (.*) on the top$/ do |message|
	expect(message).to eq tasks_page.header.text
end

And /^I enter (.*) in the task description field and hit enter$/ do |task_description|
	tasks_page.new_task.set(task_description)
	tasks_page.new_task.send_keys :enter
	@task_name = task_description
end

And /^I should see (.*) task created in the Created Tasks list$/ do |task_name|
	task = tasks_helper.text_found?(task_name, tasks_page.class::TASKS_CREATED)
	expect(task).to be true
end

And /^I enter (.*) in the task description field and click on Add Task button$/ do |description|
	tasks_page.new_task.set(description)
	tasks_page.add_task.click
end

Then /^I should see a modal dialog$/ do
	page.should have_css subtasks_page.class::MODAL
end

Then /^I enter (.*) in subtask description field$/ do |description|
	subtasks_page.subtask_field.set(description)
end

Then /^I enter (.*) date$/ do |date|
	subtasks_page.date.native.clear
	subtasks_page.date.set(date)
end

Then /^I should see subtask (.*) appended on the bottom part of the modal$/ do |subtask|
	page.should have_css tasks_page.class::TASKS_CREATED 
	sub_task = tasks_helper.text_found?(subtask, tasks_page.class::TASKS_CREATED)
	expect(sub_task).to be true
end

And /^I click on Close button in the subtask modal dialog$/ do
	subtasks_page.close.click
end

Then /^I should see (.*) created tasks on Manage Subtasks button$/ do |amount|
	elements = tasks_helper.return_element(@task_name, tasks_page.class::ALL_TASKS)
	manage_button_text = elements.find(tasks_page.class::MANAGE_SUBTASKS).text
	number_tasks = manage_button_text.scan(/\d+/).first
	expect(number_tasks.to_i).to be amount.to_i
end

Then /^I remove (.*) task from Created Task list$/ do |task|
	elements = tasks_helper.return_element(task, tasks_page.class::ALL_TASKS)
	elements.find(tasks_page.class::REMOVE).click
end
