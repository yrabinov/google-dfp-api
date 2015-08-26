# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-08-12 14:23:31.

require 'ads_common/savon_service'
require 'dfp_api/v201408/exchange_rate_service_registry'

module DfpApi; module V201408; module ExchangeRateService
  class ExchangeRateService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201408'
      super(config, endpoint, namespace, :v201408)
    end

    def create_exchange_rates(*args, &block)
      return execute_action('create_exchange_rates', args, &block)
    end

    def get_exchange_rates_by_statement(*args, &block)
      return execute_action('get_exchange_rates_by_statement', args, &block)
    end

    def perform_exchange_rate_action(*args, &block)
      return execute_action('perform_exchange_rate_action', args, &block)
    end

    def update_exchange_rates(*args, &block)
      return execute_action('update_exchange_rates', args, &block)
    end

    private

    def get_service_registry()
      return ExchangeRateServiceRegistry
    end

    def get_module()
      return DfpApi::V201408::ExchangeRateService
    end
  end
end; end; end
