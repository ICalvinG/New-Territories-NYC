require 'test_helper'

class JobMailerTest < ActionMailer::TestCase
  test "job_application" do
    mail = JobMailer.job_application
    assert_equal "Job application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
