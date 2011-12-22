#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.1 on 2011-12-20 18:00:11.

require 'dfp_api/errors'

module DfpApi; module V201111; module ContentService
  class ContentServiceRegistry
    CONTENTSERVICE_METHODS = {:get_content_by_statement=>{:output=>{:fields=>[{:type=>"ContentPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_content_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:statement}]}, :get_content_by_statement_and_custom_targeting_value=>{:output=>{:fields=>[{:type=>"ContentPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_content_by_statement_and_custom_targeting_value_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_value_id}]}, :get_uncategorized_content_by_statement=>{:output=>{:fields=>[{:type=>"ContentPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_uncategorized_content_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}}
    CONTENTSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Content=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"ContentStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :ContentPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Content", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ContentStatus=>{:fields=>[]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}}
    CONTENTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CONTENTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CONTENTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CONTENTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
