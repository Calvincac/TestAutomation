module AvenueCode

    class BasePage
        
        include RSpec::Matchers
        include Capybara::DSL
    end
end

World(AvenueCode)
