# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2015-02-11 12:50:40.

require 'dfp_api/errors'

module DfpApi; module V201502; module PremiumRateService
  class PremiumRateServiceRegistry
    PREMIUMRATESERVICE_METHODS = {:create_premium_rates=>{:input=>[{:name=>:premium_rates, :type=>"PremiumRate", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_premium_rates_response", :fields=>[{:name=>:rval, :type=>"PremiumRate", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_premium_rates_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_premium_rates_by_statement_response", :fields=>[{:name=>:rval, :type=>"PremiumRatePage", :min_occurs=>0, :max_occurs=>1}]}}, :update_premium_rates=>{:input=>[{:name=>:premium_rates, :type=>"PremiumRate", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_premium_rates_response", :fields=>[{:name=>:rval, :type=>"PremiumRate", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    PREMIUMRATESERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :AdUnitPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentPremiumFeature=>{:fields=>[{:name=>:audience_segment_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"PremiumFeature"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BandwidthPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :BrowserPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :BrowserLanguagePremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomTargetingPremiumFeature=>{:fields=>[{:name=>:custom_targeting_key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_targeting_value_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"PremiumFeature"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DaypartPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :DeviceCapabilityPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :DeviceCategoryPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :DeviceManufacturerPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCapPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :GeographyPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :MobileCarrierPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OperatingSystemPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PlacementPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :PremiumFeature=>{:fields=>[], :abstract=>true}, :PremiumRate=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_card_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:pricing_method, :type=>"PricingMethod", :min_occurs=>0, :max_occurs=>1}, {:name=>:premium_feature, :type=>"PremiumFeature", :min_occurs=>0, :max_occurs=>1}, {:name=>:premium_rate_values, :type=>"PremiumRateValue", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PremiumRateError=>{:fields=>[{:name=>:reason, :type=>"PremiumRateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PremiumRatePage=>{:fields=>[{:name=>:results, :type=>"PremiumRate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PremiumRateValue=>{:fields=>[{:name=>:premium_rate_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:premium_feature, :type=>"PremiumFeature", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_type, :type=>"RateType", :min_occurs=>0, :max_occurs=>1}, {:name=>:adjustment_type, :type=>"PremiumAdjustmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:adjustment_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UnknownPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :UserDomainPremiumFeature=>{:fields=>[], :base=>"PremiumFeature"}, :Value=>{:fields=>[], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :PremiumAdjustmentType=>{:fields=>[]}, :"PremiumRateError.Reason"=>{:fields=>[]}, :PricingMethod=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :RateType=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}}
    PREMIUMRATESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return PREMIUMRATESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return PREMIUMRATESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return PREMIUMRATESERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, PremiumRateServiceRegistry)
    end
  end
end; end; end
