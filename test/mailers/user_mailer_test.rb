require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "backing_met" do
    mail = UserMailer.backing_met
    assert_equal "Backing met", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "backing_fail" do
    mail = UserMailer.backing_fail
    assert_equal "Backing fail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "project_created" do
    mail = UserMailer.project_created
    assert_equal "Project created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "project_deleted" do
    mail = UserMailer.project_deleted
    assert_equal "Project deleted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
