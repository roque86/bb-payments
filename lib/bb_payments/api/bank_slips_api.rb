=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

module BancoBrasilPayments
  class BankSlipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Barcode Payment Slip Details
    # Detalha um boleto de pagamento.
    # @param id Código identificador do pagamento.
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :agencia Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @option opts [Integer] :conta Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
    # @option opts [String] :digito_conta Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
    # @return [InlineResponse2003]
    def consulta_pagamento_boleto(id, gw_dev_app_key, authorization, opts = {})
      data, _status_code, _headers = consulta_pagamento_boleto_with_http_info(id, gw_dev_app_key, authorization, opts)
      data
    end

    # Barcode Payment Slip Details
    # Detalha um boleto de pagamento.
    # @param id Código identificador do pagamento.
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :agencia Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @option opts [Integer] :conta Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
    # @option opts [String] :digito_conta Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def consulta_pagamento_boleto_with_http_info(id, gw_dev_app_key, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankSlipsApi.consulta_pagamento_boleto ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankSlipsApi.consulta_pagamento_boleto"
      end
      # verify the required parameter 'gw_dev_app_key' is set
      if @api_client.config.client_side_validation && gw_dev_app_key.nil?
        fail ArgumentError, "Missing the required parameter 'gw_dev_app_key' when calling BankSlipsApi.consulta_pagamento_boleto"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling BankSlipsApi.consulta_pagamento_boleto"
      end
      # resource path
      local_var_path = '/barcode-payment-slips/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'gw-dev-app-key'] = gw_dev_app_key
      query_params[:'agencia'] = opts[:'agencia'] if !opts[:'agencia'].nil?
      query_params[:'conta'] = opts[:'conta'] if !opts[:'conta'].nil?
      query_params[:'digitoConta'] = opts[:'digito_conta'] if !opts[:'digito_conta'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2003' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankSlipsApi#consulta_pagamento_boleto\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Batch Payment of Bank Slips
    # solicitar pagamento em lote de Boletos
    # @param body Objeto de requisição do recurso de pagamento em lote de Boletos.
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param [Hash] opts the optional parameters
    # @return [RootTypeForBankSlipsBatchPaymentResponseObject]
    def enviar_pagamento_boletos_lote(body, authorization, gw_dev_app_key, opts = {})
      data, _status_code, _headers = enviar_pagamento_boletos_lote_with_http_info(body, authorization, gw_dev_app_key, opts)
      data
    end

    # Batch Payment of Bank Slips
    # solicitar pagamento em lote de Boletos
    # @param body Objeto de requisição do recurso de pagamento em lote de Boletos.
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param [Hash] opts the optional parameters
    # @return [Array<(RootTypeForBankSlipsBatchPaymentResponseObject, Integer, Hash)>] RootTypeForBankSlipsBatchPaymentResponseObject data, response status code and response headers
    def enviar_pagamento_boletos_lote_with_http_info(body, authorization, gw_dev_app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankSlipsApi.enviar_pagamento_boletos_lote ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankSlipsApi.enviar_pagamento_boletos_lote"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling BankSlipsApi.enviar_pagamento_boletos_lote"
      end
      # verify the required parameter 'gw_dev_app_key' is set
      if @api_client.config.client_side_validation && gw_dev_app_key.nil?
        fail ArgumentError, "Missing the required parameter 'gw_dev_app_key' when calling BankSlipsApi.enviar_pagamento_boletos_lote"
      end
      # resource path
      local_var_path = '/batch-slips'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'gw-dev-app-key'] = gw_dev_app_key

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'RootTypeForBankSlipsBatchPaymentResponseObject' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankSlipsApi#enviar_pagamento_boletos_lote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Checks the payment of Bank Slips made in the Request Payment feature
    # Consulta o pagamento de Boletos realizado no recurso de Solicitação de Pagamento. Recurso utilizado quando a empresa não recebeu a confirmação da Solicitação de Pagamento do Boleto, ou quando precisar recuperar a resposta original ou quando quer confirmar que o número requestID já foi utilizado.
    # @param id Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.
    # @param [Hash] opts the optional parameters
    # @return [RootTypeForBankSlipsBatchPaymentResponseObject]
    def sondagem_pagamento_boleto(id, opts = {})
      data, _status_code, _headers = sondagem_pagamento_boleto_with_http_info(id, opts)
      data
    end

    # Checks the payment of Bank Slips made in the Request Payment feature
    # Consulta o pagamento de Boletos realizado no recurso de Solicitação de Pagamento. Recurso utilizado quando a empresa não recebeu a confirmação da Solicitação de Pagamento do Boleto, ou quando precisar recuperar a resposta original ou quando quer confirmar que o número requestID já foi utilizado.
    # @param id Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RootTypeForBankSlipsBatchPaymentResponseObject, Integer, Hash)>] RootTypeForBankSlipsBatchPaymentResponseObject data, response status code and response headers
    def sondagem_pagamento_boleto_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankSlipsApi.sondagem_pagamento_boleto ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankSlipsApi.sondagem_pagamento_boleto"
      end
      # resource path
      local_var_path = '/batch-slips/{id}/check'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'RootTypeForBankSlipsBatchPaymentResponseObject' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankSlipsApi#sondagem_pagamento_boleto\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
