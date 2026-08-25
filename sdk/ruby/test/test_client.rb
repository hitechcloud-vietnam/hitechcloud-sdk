require_relative "test_helper"

class TestHiTechCloud < Minitest::Test
  def test_client_creation
    client = HiTechCloud::Client.new(token: "test_token")
    assert_instance_of HiTechCloud::Client, client
  end

  def test_client_with_custom_url
    client = HiTechCloud::Client.new(token: "test_token", base_url: "https://custom.api.com")
    assert_instance_of HiTechCloud::Client, client
  end

  def test_client_has_resources
    client = HiTechCloud::Client.new(token: "test_token")
    %i[services domains dns ssl billing support].each do |resource|
      assert_respond_to client, resource, "Client should respond to #{resource}"
    end
  end

  def test_exception_classes
    assert HiTechCloud::Error < StandardError
    assert HiTechCloud::AuthenticationError < HiTechCloud::Error
    assert HiTechCloud::NotFoundError < HiTechCloud::Error
  end
end
