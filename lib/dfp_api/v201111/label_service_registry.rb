#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.1 on 2011-12-20 17:59:39.

require 'dfp_api/errors'

module DfpApi; module V201111; module LabelService
  class LabelServiceRegistry
    LABELSERVICE_METHODS = {:perform_label_action=>{:output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_label_action_response"}, :input=>[{:type=>"LabelAction", :min_occurs=>0, :max_occurs=>1, :name=>:label_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :update_label=>{:output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_label_response"}, :input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:label}]}, :create_label=>{:output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_label_response"}, :input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:label}]}, :update_labels=>{:output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_labels_response"}, :input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:labels}]}, :create_labels=>{:output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_labels_response"}, :input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:labels}]}, :get_label=>{:output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_label_response"}, :input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:label_id}]}, :get_labels_by_statement=>{:output=>{:fields=>[{:type=>"LabelPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_labels_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}}
    LABELSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :LabelPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :LabelType=>{:fields=>[]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :ActivateLabels=>{:fields=>[], :base=>"LabelAction"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :DeactivateLabels=>{:fields=>[], :base=>"LabelAction"}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :LabelAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:label_action_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :Label=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_active}, {:type=>"LabelType", :min_occurs=>0, :max_occurs=>1, :name=>:type}]}}
    LABELSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LABELSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LABELSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LABELSERVICE_NAMESPACES[index]
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
