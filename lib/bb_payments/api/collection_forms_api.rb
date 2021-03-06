=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

module BancoBrasilPayments
  class CollectionFormsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Consulta Pagamentos em Lote de Guias com Código de Barra
    # A partir de um código identificador de pagamento de uma Guia com Código de Barra, retorna os detalhes do pagamento desta, como estado do pagamento, data do pagamento, forma do pagamento, valor, descrição, código de devolução, entre outros.
    # @param id Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.
    # @param authorization É o valor do token de acesso fornecido pelo OAuth. Exemplo: Bearer &lt;acess_token&gt;
    # @param gw_dev_app_key É a chave de acesso do aplicativo do desenvolvedor obtida no Portal do Desenvolvedor. Essa chave será usada para identificação do aplicativo.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :agencia Número da agência da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @option opts [Float] :conta_corrente Número da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @option opts [String] :digito_verificador Dígito verificador da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @return [BarcodeCollectionFormsIDResponseObject]
    def consulta_pagamento_guia_lote(id, authorization, gw_dev_app_key, opts = {})
      data, _status_code, _headers = consulta_pagamento_guia_lote_with_http_info(id, authorization, gw_dev_app_key, opts)
      data
    end

    # Consulta Pagamentos em Lote de Guias com Código de Barra
    # A partir de um código identificador de pagamento de uma Guia com Código de Barra, retorna os detalhes do pagamento desta, como estado do pagamento, data do pagamento, forma do pagamento, valor, descrição, código de devolução, entre outros.
    # @param id Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.
    # @param authorization É o valor do token de acesso fornecido pelo OAuth. Exemplo: Bearer &lt;acess_token&gt;
    # @param gw_dev_app_key É a chave de acesso do aplicativo do desenvolvedor obtida no Portal do Desenvolvedor. Essa chave será usada para identificação do aplicativo.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :agencia Número da agência da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @option opts [Float] :conta_corrente Número da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @option opts [String] :digito_verificador Dígito verificador da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
    # @return [Array<(BarcodeCollectionFormsIDResponseObject, Integer, Hash)>] BarcodeCollectionFormsIDResponseObject data, response status code and response headers
    def consulta_pagamento_guia_lote_with_http_info(id, authorization, gw_dev_app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionFormsApi.consulta_pagamento_guia_lote ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CollectionFormsApi.consulta_pagamento_guia_lote"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling CollectionFormsApi.consulta_pagamento_guia_lote"
      end
      # verify the required parameter 'gw_dev_app_key' is set
      if @api_client.config.client_side_validation && gw_dev_app_key.nil?
        fail ArgumentError, "Missing the required parameter 'gw_dev_app_key' when calling CollectionFormsApi.consulta_pagamento_guia_lote"
      end
      # resource path
      local_var_path = '/barcode-collection-forms/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'gw-dev-app-key'] = gw_dev_app_key
      query_params[:'agencia'] = opts[:'agencia'] if !opts[:'agencia'].nil?
      query_params[:'contaCorrente'] = opts[:'conta_corrente'] if !opts[:'conta_corrente'].nil?
      query_params[:'digitoVerificador'] = opts[:'digito_verificador'] if !opts[:'digito_verificador'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'BarcodeCollectionFormsIDResponseObject' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionFormsApi#consulta_pagamento_guia_lote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Barcode Collection Forms Payment
    # Solicitar pagamento em lote de Guias de Recolhimento com código de barras.
    # @param body Objeto de requisição do recurso de pagamento em lote de Guias com Código de Barras.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def envia_pagamento_guias_lote(body, opts = {})
      data, _status_code, _headers = envia_pagamento_guias_lote_with_http_info(body, opts)
      data
    end

    # Barcode Collection Forms Payment
    # Solicitar pagamento em lote de Guias de Recolhimento com código de barras.
    # @param body Objeto de requisição do recurso de pagamento em lote de Guias com Código de Barras.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def envia_pagamento_guias_lote_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionFormsApi.envia_pagamento_guias_lote ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CollectionFormsApi.envia_pagamento_guias_lote"
      end
      # resource path
      local_var_path = '/barcode-collection-forms'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse2011' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionFormsApi#envia_pagamento_guias_lote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Barcode Collection Forms Payment Check
    # Consultar a resposta de uma solicitação de pagamento em lote de guias de recolhimento com código de barras.
    # @param id Identificação da solicitação de pagamento. É um número único, não sequencial, cujo valor vai de 1 a 999999999.
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param debit_branch_office Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param debit_current_account Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param check_digits_debit_current_account Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def sondagem_pagamento_guia_lote(id, gw_dev_app_key, authorization, debit_branch_office, debit_current_account, check_digits_debit_current_account, opts = {})
      data, _status_code, _headers = sondagem_pagamento_guia_lote_with_http_info(id, gw_dev_app_key, authorization, debit_branch_office, debit_current_account, check_digits_debit_current_account, opts)
      data
    end

    # Barcode Collection Forms Payment Check
    # Consultar a resposta de uma solicitação de pagamento em lote de guias de recolhimento com código de barras.
    # @param id Identificação da solicitação de pagamento. É um número único, não sequencial, cujo valor vai de 1 a 999999999.
    # @param gw_dev_app_key Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
    # @param authorization É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
    # @param debit_branch_office Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param debit_current_account Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param check_digits_debit_current_account Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def sondagem_pagamento_guia_lote_with_http_info(id, gw_dev_app_key, authorization, debit_branch_office, debit_current_account, check_digits_debit_current_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionFormsApi.sondagem_pagamento_guia_lote ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # verify the required parameter 'gw_dev_app_key' is set
      if @api_client.config.client_side_validation && gw_dev_app_key.nil?
        fail ArgumentError, "Missing the required parameter 'gw_dev_app_key' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # verify the required parameter 'debit_branch_office' is set
      if @api_client.config.client_side_validation && debit_branch_office.nil?
        fail ArgumentError, "Missing the required parameter 'debit_branch_office' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # verify the required parameter 'debit_current_account' is set
      if @api_client.config.client_side_validation && debit_current_account.nil?
        fail ArgumentError, "Missing the required parameter 'debit_current_account' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # verify the required parameter 'check_digits_debit_current_account' is set
      if @api_client.config.client_side_validation && check_digits_debit_current_account.nil?
        fail ArgumentError, "Missing the required parameter 'check_digits_debit_current_account' when calling CollectionFormsApi.sondagem_pagamento_guia_lote"
      end
      # resource path
      local_var_path = '/barcode-collection-forms/{id}/check'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'gw-dev-app-key'] = gw_dev_app_key
      query_params[:'debitBranchOffice'] = debit_branch_office
      query_params[:'debitCurrentAccount'] = debit_current_account
      query_params[:'checkDigitsDebitCurrentAccount'] = check_digits_debit_current_account

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2011' 

      auth_names = opts[:auth_names] || ['OAuth2-CC']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionFormsApi#sondagem_pagamento_guia_lote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
