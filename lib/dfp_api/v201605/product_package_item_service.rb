# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-05-23 15:37:40.

require 'ads_common/savon_service'
require 'dfp_api/v201605/product_package_item_service_registry'

module DfpApi; module V201605; module ProductPackageItemService
  class ProductPackageItemService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201605'
      super(config, endpoint, namespace, :v201605)
    end

    def create_product_package_items(*args, &block)
      return execute_action('create_product_package_items', args, &block)
    end

    def create_product_package_items_to_xml(*args)
      return get_soap_xml('create_product_package_items', args)
    end

    def get_product_package_items_by_statement(*args, &block)
      return execute_action('get_product_package_items_by_statement', args, &block)
    end

    def get_product_package_items_by_statement_to_xml(*args)
      return get_soap_xml('get_product_package_items_by_statement', args)
    end

    def perform_product_package_item_action(*args, &block)
      return execute_action('perform_product_package_item_action', args, &block)
    end

    def perform_product_package_item_action_to_xml(*args)
      return get_soap_xml('perform_product_package_item_action', args)
    end

    def update_product_package_items(*args, &block)
      return execute_action('update_product_package_items', args, &block)
    end

    def update_product_package_items_to_xml(*args)
      return get_soap_xml('update_product_package_items', args)
    end

    private

    def get_service_registry()
      return ProductPackageItemServiceRegistry
    end

    def get_module()
      return DfpApi::V201605::ProductPackageItemService
    end
  end
end; end; end
