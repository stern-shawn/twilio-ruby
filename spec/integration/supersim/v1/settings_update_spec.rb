##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'SettingsUpdate' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.settings_updates.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://supersim.twilio.com/v1/SettingsUpdates',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "settings_updates": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://supersim.twilio.com/v1/SettingsUpdates?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/SettingsUpdates?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "settings_updates"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.settings_updates.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_sim_only responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "settings_updates": [
              {
                  "sid": "OBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "iccid": "89883070000123456789",
                  "sim_sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "successful",
                  "packages": [
                      {
                          "name": "base-settings",
                          "version": "1.0.0",
                          "more_info": "https://twilio.com/docs/iot/supersim/settings-packages/base-settings"
                      }
                  ],
                  "date_completed": "2015-07-30T20:00:00Z",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://supersim.twilio.com/v1/SettingsUpdates?Sim=HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/SettingsUpdates?Sim=HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "next_page_url": null,
              "key": "settings_updates"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.settings_updates.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_status_only responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "settings_updates": [
              {
                  "sid": "OBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "iccid": "89883070000123456789",
                  "sim_sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "scheduled",
                  "packages": [
                      {
                          "name": "base-settings",
                          "version": "1.0.0",
                          "more_info": "https://twilio.com/docs/iot/supersim/settings-packages/base-settings"
                      }
                  ],
                  "date_completed": null,
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://supersim.twilio.com/v1/SettingsUpdates?Status=scheduled&PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/SettingsUpdates?Status=scheduled&PageSize=50&Page=0",
              "next_page_url": null,
              "key": "settings_updates"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.settings_updates.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "settings_updates": [
              {
                  "sid": "OBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "iccid": "89883070000123456789",
                  "sim_sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "scheduled",
                  "packages": [
                      {
                          "name": "base-settings",
                          "version": "1.0.0",
                          "more_info": "https://twilio.com/docs/iot/supersim/settings-packages/base-settings"
                      }
                  ],
                  "date_completed": null,
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://supersim.twilio.com/v1/SettingsUpdates?Status=scheduled&Sim=HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/SettingsUpdates?Status=scheduled&Sim=HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "next_page_url": null,
              "key": "settings_updates"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.settings_updates.list()

    expect(actual).to_not eq(nil)
  end
end