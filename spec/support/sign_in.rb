RSpec.configure do |config|
  config.before(:each, type: :view) do
    view.stub(current_user: "stubbed user")
  end
end

