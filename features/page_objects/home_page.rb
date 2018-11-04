module AvenueCode
    class HomePage < BasePage
      SIGN_IN  = 'a[href="/users/sign_in"]'
      MY_TASKS = '.nav.navbar-nav:nth-child(1) > li:nth-child(2)'

      def sign_in_button
        page.find(SIGN_IN)
      end

      def my_tasks_button
        page.find(MY_TASKS)
      end
  end
end

World(AvenueCode)
