require 'test_helper'

class NotificationsMailerTest < ActionMailer::TestCase
  test "your_town" do
    mail = NotificationsMailer.your_town
    assert_equal "Your town", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
