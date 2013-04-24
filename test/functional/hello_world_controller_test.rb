require 'test_helper'

class HelloWorldControllerTest < ActionController::TestCase
  def hello
      render text: "Olá Mundo"
  end
end
