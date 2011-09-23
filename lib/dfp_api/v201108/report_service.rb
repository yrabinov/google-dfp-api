#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-23 16:10:57.

require 'ads_common/savon_service'
require 'dfp_api/v201108/report_service_registry'

module DfpApi; module V201108; module ReportService
  class ReportService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201108'
      super(api, endpoint, namespace, :v201108)
    end

    def run_report_job(*args)
      return execute_action('run_report_job', args)
    end

    def get_report_download_url(*args)
      return execute_action('get_report_download_url', args)
    end

    def get_report_job(*args)
      return execute_action('get_report_job', args)
    end

    private

    def get_service_registry()
      return ReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201108::ReportService
    end
  end
end; end; end
