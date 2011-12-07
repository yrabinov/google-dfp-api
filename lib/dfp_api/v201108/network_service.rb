#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:52:05.

require 'ads_common/savon_service'
require 'dfp_api/v201108/network_service_registry'

module DfpApi; module V201108; module NetworkService
  class NetworkService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201108'
      super(api, endpoint, namespace, :v201108)
    end

    def get_all_networks(*args, &block)
      return execute_action('get_all_networks', args, &block)
    end

    def get_current_network(*args, &block)
      return execute_action('get_current_network', args, &block)
    end

    def update_network(*args, &block)
      return execute_action('update_network', args, &block)
    end

    private

    def get_service_registry()
      return NetworkServiceRegistry
    end

    def get_module()
      return DfpApi::V201108::NetworkService
    end
  end
end; end; end
