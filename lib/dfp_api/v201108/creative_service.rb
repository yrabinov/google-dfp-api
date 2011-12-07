#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:51:49.

require 'ads_common/savon_service'
require 'dfp_api/v201108/creative_service_registry'

module DfpApi; module V201108; module CreativeService
  class CreativeService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201108'
      super(api, endpoint, namespace, :v201108)
    end

    def create_creative(*args, &block)
      return execute_action('create_creative', args, &block)
    end

    def create_creatives(*args, &block)
      return execute_action('create_creatives', args, &block)
    end

    def get_creative(*args, &block)
      return execute_action('get_creative', args, &block)
    end

    def get_creatives_by_statement(*args, &block)
      return execute_action('get_creatives_by_statement', args, &block)
    end

    def update_creative(*args, &block)
      return execute_action('update_creative', args, &block)
    end

    def update_creatives(*args, &block)
      return execute_action('update_creatives', args, &block)
    end

    private

    def get_service_registry()
      return CreativeServiceRegistry
    end

    def get_module()
      return DfpApi::V201108::CreativeService
    end
  end
end; end; end
