# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.10.0 on 2015-08-13 11:28:34.

require 'ads_common/savon_service'
require 'dfp_api/v201508/reconciliation_line_item_report_service_registry'

module DfpApi; module V201508; module ReconciliationLineItemReportService
  class ReconciliationLineItemReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
    end

    def get_reconciliation_line_item_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_line_item_reports_by_statement', args, &block)
    end

    def update_reconciliation_line_item_reports(*args, &block)
      return execute_action('update_reconciliation_line_item_reports', args, &block)
    end

    private

    def get_service_registry()
      return ReconciliationLineItemReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201508::ReconciliationLineItemReportService
    end
  end
end; end; end
