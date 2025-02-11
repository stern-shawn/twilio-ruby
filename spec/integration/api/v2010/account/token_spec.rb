##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Token' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .tokens.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tokens.json',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "username": "dc2d2894d5a9023620c467b0e71cfa6a35457e6679785ed6ae9856fe5bdfa269",
          "ice_servers": [
              {
                  "urls": "stun:global.stun.twilio.com:3478"
              },
              {
                  "username": "dc2d2894d5a9023620c467b0e71cfa6a35457e6679785ed6ae9856fe5bdfa269",
                  "credential": "tE2DajzSJwnsSbc123",
                  "urls": "turn:global.turn.twilio.com:3478?transport=udp"
              },
              {
                  "username": "dc2d2894d5a9023620c467b0e71cfa6a35457e6679785ed6ae9856fe5bdfa269",
                  "credential": "tE2DajzSJwnsSbc123",
                  "urls": "turn:global.turn.twilio.com:3478?transport=tcp"
              },
              {
                  "username": "dc2d2894d5a9023620c467b0e71cfa6a35457e6679785ed6ae9856fe5bdfa269",
                  "credential": "tE2DajzSJwnsSbc123",
                  "urls": "turn:global.turn.twilio.com:443?transport=tcp"
              }
          ],
          "date_updated": "Fri, 01 May 2020 01:42:57 +0000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "ttl": "86400",
          "date_created": "Fri, 01 May 2020 01:42:57 +0000",
          "password": "tE2DajzSJwnsSbc123"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .tokens.create()

    expect(actual).to_not eq(nil)
  end
end