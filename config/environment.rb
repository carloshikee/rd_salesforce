# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RdSalesforce::Application.initialize!

ENV['sfdc_api_version'] = '21.0'