=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BancoBrasilPayments::ErrorOAuthUnauthorized
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorOAuthUnauthorized' do
  before do
    # run before each test
    @instance = BancoBrasilPayments::ErrorOAuthUnauthorized.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorOAuthUnauthorized' do
    it 'should create an instance of ErrorOAuthUnauthorized' do
      expect(@instance).to be_instance_of(BancoBrasilPayments::ErrorOAuthUnauthorized)
    end
  end
  describe 'test attribute "status_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "attributes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
