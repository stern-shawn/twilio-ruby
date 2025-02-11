##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'InsightsSettingsComment' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_settings_comment.fetch(token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Settings/CommentTags',
        headers: headers,
    ))).to eq(true)
  end

  it "receives read responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "comments": [
              {
                  "default": false,
                  "id": "4c5ba39a-e192-4c5d-a41c-b765a833665b",
                  "name": "Good",
                  "sort": 0
              }
          ],
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Settings/CommentTags"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_settings_comment.fetch()

    expect(actual).to_not eq(nil)
  end
end