=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module BancoBrasilPayments
  class InlineResponse2003ListaBoleto
    # \"Código de barras do boleto consultado.  Não é a linha digitável do boleto.\" 
    attr_accessor :codigo_barras

    # Exibe o Nosso Número quando informado na solicitação de pagamento. Não validado pelo Banco. 
    attr_accessor :nosso_documento

    # Exibe o Seu Número quando informado na solicitação de pagamento. Não validado pelo Banco. 
    attr_accessor :seu_documento

    # Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Beneficiário do Boleto DOMÍNIOS: 1 - CPF 2 – CNPJ
    attr_accessor :tipo_pessoa_beneficiario

    # Nº CPF ou um Nº de CNPJ do Beneficiário do Boleto informado na solicitação de pagamento. 
    attr_accessor :documento_beneficiario

    # Nome do Beneficiário - dado retornado pelo Banco 
    attr_accessor :nome_beneficiario

    # Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Pagador do Boleto. DOMÍNIOS: 1 - CPF 2 – CNPJ 
    attr_accessor :tipo_pessoa_pagador

    # Nº CPF ou um Nº de CNPJ do Pagador do boleto informado na solicitação de pagamento. 
    attr_accessor :documento_pagador

    # Nome do Pagador - dado retornado pelo Banco.
    attr_accessor :nome_pagador

    # Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Avalista do Boleto. DOMÍNIOS:  1 - CPF 2 – CNPJ
    attr_accessor :tipo_pessoa_avalista

    # Nº CPF ou um Nº de CNPJ do Avalista do boleto informado na solicitação de pagamento. 
    attr_accessor :documento_avalista

    # Nome do Avalista - dado retornado pelo Banco 
    attr_accessor :nome_avalista

    # Data de vencimento do boleto informado na solicitação de pagamento (formato ddmmaaaa)
    attr_accessor :data_vencimento

    # Data do pagamento informado na solicitação de pagamento  (formato ddmmaaaa)
    attr_accessor :data_agendamento

    # Valor do boleto registrado pelo Beneficiário do Boleto e informado na solicitação de pagamento  (formato 0.00)
    attr_accessor :valor_nominal

    # Valor do juros mora e multa informado na solicitação de pagamento  (formato 0.00)
    attr_accessor :valor_mora_multa

    # Valor do desconto/abatimento informado na solicitação de pagamento (formato 0.00)
    attr_accessor :valor_desconto

    # Campo livre informado pelo pagador quando do envio do lançamento consultado – sem tratamento pelo Banco. 
    attr_accessor :texto

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'codigo_barras' => :'codigoBarras',
        :'nosso_documento' => :'nossoDocumento',
        :'seu_documento' => :'seuDocumento',
        :'tipo_pessoa_beneficiario' => :'tipoPessoaBeneficiario',
        :'documento_beneficiario' => :'documentoBeneficiario',
        :'nome_beneficiario' => :'nomeBeneficiario',
        :'tipo_pessoa_pagador' => :'tipoPessoaPagador',
        :'documento_pagador' => :'documentoPagador',
        :'nome_pagador' => :'nomePagador',
        :'tipo_pessoa_avalista' => :'tipoPessoaAvalista',
        :'documento_avalista' => :'documentoAvalista',
        :'nome_avalista' => :'nomeAvalista',
        :'data_vencimento' => :'dataVencimento',
        :'data_agendamento' => :'dataAgendamento',
        :'valor_nominal' => :'valorNominal',
        :'valor_mora_multa' => :'valorMoraMulta',
        :'valor_desconto' => :'valorDesconto',
        :'texto' => :'texto'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'codigo_barras' => :'Object',
        :'nosso_documento' => :'Object',
        :'seu_documento' => :'Object',
        :'tipo_pessoa_beneficiario' => :'Object',
        :'documento_beneficiario' => :'Object',
        :'nome_beneficiario' => :'Object',
        :'tipo_pessoa_pagador' => :'Object',
        :'documento_pagador' => :'Object',
        :'nome_pagador' => :'Object',
        :'tipo_pessoa_avalista' => :'Object',
        :'documento_avalista' => :'Object',
        :'nome_avalista' => :'Object',
        :'data_vencimento' => :'Object',
        :'data_agendamento' => :'Object',
        :'valor_nominal' => :'Object',
        :'valor_mora_multa' => :'Object',
        :'valor_desconto' => :'Object',
        :'texto' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancoBrasilPayments::InlineResponse2003ListaBoleto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancoBrasilPayments::InlineResponse2003ListaBoleto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'codigo_barras')
        self.codigo_barras = attributes[:'codigo_barras']
      end

      if attributes.key?(:'nosso_documento')
        self.nosso_documento = attributes[:'nosso_documento']
      end

      if attributes.key?(:'seu_documento')
        self.seu_documento = attributes[:'seu_documento']
      end

      if attributes.key?(:'tipo_pessoa_beneficiario')
        self.tipo_pessoa_beneficiario = attributes[:'tipo_pessoa_beneficiario']
      end

      if attributes.key?(:'documento_beneficiario')
        self.documento_beneficiario = attributes[:'documento_beneficiario']
      end

      if attributes.key?(:'nome_beneficiario')
        self.nome_beneficiario = attributes[:'nome_beneficiario']
      end

      if attributes.key?(:'tipo_pessoa_pagador')
        self.tipo_pessoa_pagador = attributes[:'tipo_pessoa_pagador']
      end

      if attributes.key?(:'documento_pagador')
        self.documento_pagador = attributes[:'documento_pagador']
      end

      if attributes.key?(:'nome_pagador')
        self.nome_pagador = attributes[:'nome_pagador']
      end

      if attributes.key?(:'tipo_pessoa_avalista')
        self.tipo_pessoa_avalista = attributes[:'tipo_pessoa_avalista']
      end

      if attributes.key?(:'documento_avalista')
        self.documento_avalista = attributes[:'documento_avalista']
      end

      if attributes.key?(:'nome_avalista')
        self.nome_avalista = attributes[:'nome_avalista']
      end

      if attributes.key?(:'data_vencimento')
        self.data_vencimento = attributes[:'data_vencimento']
      end

      if attributes.key?(:'data_agendamento')
        self.data_agendamento = attributes[:'data_agendamento']
      end

      if attributes.key?(:'valor_nominal')
        self.valor_nominal = attributes[:'valor_nominal']
      end

      if attributes.key?(:'valor_mora_multa')
        self.valor_mora_multa = attributes[:'valor_mora_multa']
      end

      if attributes.key?(:'valor_desconto')
        self.valor_desconto = attributes[:'valor_desconto']
      end

      if attributes.key?(:'texto')
        self.texto = attributes[:'texto']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          codigo_barras == o.codigo_barras &&
          nosso_documento == o.nosso_documento &&
          seu_documento == o.seu_documento &&
          tipo_pessoa_beneficiario == o.tipo_pessoa_beneficiario &&
          documento_beneficiario == o.documento_beneficiario &&
          nome_beneficiario == o.nome_beneficiario &&
          tipo_pessoa_pagador == o.tipo_pessoa_pagador &&
          documento_pagador == o.documento_pagador &&
          nome_pagador == o.nome_pagador &&
          tipo_pessoa_avalista == o.tipo_pessoa_avalista &&
          documento_avalista == o.documento_avalista &&
          nome_avalista == o.nome_avalista &&
          data_vencimento == o.data_vencimento &&
          data_agendamento == o.data_agendamento &&
          valor_nominal == o.valor_nominal &&
          valor_mora_multa == o.valor_mora_multa &&
          valor_desconto == o.valor_desconto &&
          texto == o.texto
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [codigo_barras, nosso_documento, seu_documento, tipo_pessoa_beneficiario, documento_beneficiario, nome_beneficiario, tipo_pessoa_pagador, documento_pagador, nome_pagador, tipo_pessoa_avalista, documento_avalista, nome_avalista, data_vencimento, data_agendamento, valor_nominal, valor_mora_multa, valor_desconto, texto].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        BancoBrasilPayments.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
