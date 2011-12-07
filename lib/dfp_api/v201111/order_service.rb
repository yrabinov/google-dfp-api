#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:52:45.

require 'ads_common/savon_service'
require 'dfp_api/v201111/order_service_registry'

module DfpApi; module V201111; module OrderService
  class OrderService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201111'
      super(api, endpoint, namespace, :v201111)
    end

    def create_order(*args, &block)
      return execute_action('create_order', args, &block)
    end

    def create_orders(*args, &block)
      return execute_action('create_orders', args, &block)
    end

    def get_order(*args, &block)
      return execute_action('get_order', args, &block)
    end

    def get_orders_by_statement(*args, &block)
      return execute_action('get_orders_by_statement', args, &block)
    end

    def perform_order_action(*args, &block)
      return execute_action('perform_order_action', args, &block)
    end

    def update_order(*args, &block)
      return execute_action('update_order', args, &block)
    end

    def update_orders(*args, &block)
      return execute_action('update_orders', args, &block)
    end

    private

    def get_service_registry()
      return OrderServiceRegistry
    end

    def get_module()
      return DfpApi::V201111::OrderService
    end
  end
end; end; end
