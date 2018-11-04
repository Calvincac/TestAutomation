module AvenueCode
    class LoginPage < BasePage
        EMAIL    = '#user_email'
        PASSWORD = '#user_password'
        SIGN_IN  = '.btn.btn-primary'

        def email
            page.find(EMAIL)
        end
        
        def password
            page.find(PASSWORD)
        end

        def sign_in
            page.find(SIGN_IN)
        end
  end
end

World(AvenueCode)