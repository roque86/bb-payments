=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module BancoBrasilPayments
  class BatchtransfersPaymentsList
    # Código de identificação da instituição para crédito na câmara de compensação (no Brasil, identificado pela sigla COMPE). Por exemplo, valor 1 para o Banco do Brasil e valor 104 para a Caixa Econômica Federal. Se o valor 0 for informado, o campo ispbCode será considerado.
    attr_accessor :clearinghouse_code

    # Código identificador do Sistema de Pagamento Brasileiro (Identificado pelo acrônimo ISPB) para crédito. Por exemplo, valor 0 para o Banco do Brasil e valor 360305 para a Caixa Econômica Federal. Não considerado quando o campo clearinghouse é informado.
    attr_accessor :ispb_code

    # Código da agência para crédito.
    attr_accessor :credit_branch_office

    # Conta corrente para crédito.
    attr_accessor :credit_current_account

    # Dígito verificador da conta corrente para crédito.
    attr_accessor :check_digits_credit_current_account

    # Conta de pagamento para crédito. Se esse campo estiver preenchido, os campos creditBranchOffice, creditCurrentAccount, checkDigitsCreditCurrentAccount e depositInCourtIdentifier não deverão ser inseridos.
    attr_accessor :credit_payment_account

    # Número do CPF junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa jurídica.
    attr_accessor :individual_taxpayer_registration

    # Número do CNPJ junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa física.
    attr_accessor :corporate_taxpayer_registration

    # Data do pagamento (formato ddmmaaaa). Solicitações de pagamentos para dias não úteis ou após o horário limite de processamento serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil. Poderão ser efetuados agendamentos para até 180 dias
    attr_accessor :payment_date

    # Valor do pagamento em reais (formato 0.00)
    attr_accessor :payment_value

    # Documento de débito que será mostrado no extrato da conta do pagador.  Por ser um campo opcional, se não inserido, a conta de débito terá um único lançamento no valor total de todos os lançamentos de créditos validados. De igual modo será se o mesmo número for informado para todos os lançamentos de crédito.  Quando números diferentes forem informados para cada lançamento, os lançamentos de débitos serão individualizados.
    attr_accessor :debit_document

    # Número do documento de crédito exibido no extrato do favorecido - uso exclusivo para Crédito em conta corrente no BB.
    attr_accessor :credit_document

    # Código de finalidade informado quando se trata de DOC. Uma lista de códigos permitidos é obtida na Federação Brasileira de Bancos (identificada pela sigla FEBRABAN). Por exemplo, 1 para Crédito em Conta Corrente; 11 para DOC em Conta Poupança; 12 para DOC em Conta de Depósito Judicial.
    attr_accessor :credit_order_purpose_code

    # Código de finalidade informado quando se trata de TED.  Uma lista de códigos permitidos é obtida no Banco Central do Brasil (Identificado pelo acrônimo BACEN).
    attr_accessor :wire_transfer_purpose_code

    # Identificador informado quando se trata de depósito judicial.  Insira valor 1 para o campo COMPE ou valor 0 para o campo ISPB.  Se esse campo estiver preenchido, os campos creditBranchOffice, creditCurrentAccount, checkDigitsCreditCurrentAccount e creditPaymentAccount não deverão ser inseridos.
    attr_accessor :deposit_in_court_identifier

    # Campo de uso livre pelo cliente conveniado - sem tratamento pelo Banco.
    attr_accessor :payment_description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clearinghouse_code' => :'clearinghouseCode',
        :'ispb_code' => :'ispbCode',
        :'credit_branch_office' => :'creditBranchOffice',
        :'credit_current_account' => :'creditCurrentAccount',
        :'check_digits_credit_current_account' => :'checkDigitsCreditCurrentAccount',
        :'credit_payment_account' => :'creditPaymentAccount',
        :'individual_taxpayer_registration' => :'individualTaxpayerRegistration',
        :'corporate_taxpayer_registration' => :'corporateTaxpayerRegistration',
        :'payment_date' => :'paymentDate',
        :'payment_value' => :'paymentValue',
        :'debit_document' => :'debitDocument',
        :'credit_document' => :'creditDocument',
        :'credit_order_purpose_code' => :'creditOrderPurposeCode',
        :'wire_transfer_purpose_code' => :'wireTransferPurposeCode',
        :'deposit_in_court_identifier' => :'depositInCourtIdentifier',
        :'payment_description' => :'paymentDescription'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'clearinghouse_code' => :'Object',
        :'ispb_code' => :'Object',
        :'credit_branch_office' => :'Object',
        :'credit_current_account' => :'Object',
        :'check_digits_credit_current_account' => :'Object',
        :'credit_payment_account' => :'Object',
        :'individual_taxpayer_registration' => :'Object',
        :'corporate_taxpayer_registration' => :'Object',
        :'payment_date' => :'Object',
        :'payment_value' => :'Object',
        :'debit_document' => :'Object',
        :'credit_document' => :'Object',
        :'credit_order_purpose_code' => :'Object',
        :'wire_transfer_purpose_code' => :'Object',
        :'deposit_in_court_identifier' => :'Object',
        :'payment_description' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancoBrasilPayments::BatchtransfersPaymentsList` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancoBrasilPayments::BatchtransfersPaymentsList`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'clearinghouse_code')
        self.clearinghouse_code = attributes[:'clearinghouse_code']
      end

      if attributes.key?(:'ispb_code')
        self.ispb_code = attributes[:'ispb_code']
      end

      if attributes.key?(:'credit_branch_office')
        self.credit_branch_office = attributes[:'credit_branch_office']
      end

      if attributes.key?(:'credit_current_account')
        self.credit_current_account = attributes[:'credit_current_account']
      end

      if attributes.key?(:'check_digits_credit_current_account')
        self.check_digits_credit_current_account = attributes[:'check_digits_credit_current_account']
      end

      if attributes.key?(:'credit_payment_account')
        self.credit_payment_account = attributes[:'credit_payment_account']
      end

      if attributes.key?(:'individual_taxpayer_registration')
        self.individual_taxpayer_registration = attributes[:'individual_taxpayer_registration']
      end

      if attributes.key?(:'corporate_taxpayer_registration')
        self.corporate_taxpayer_registration = attributes[:'corporate_taxpayer_registration']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'payment_value')
        self.payment_value = attributes[:'payment_value']
      end

      if attributes.key?(:'debit_document')
        self.debit_document = attributes[:'debit_document']
      end

      if attributes.key?(:'credit_document')
        self.credit_document = attributes[:'credit_document']
      end

      if attributes.key?(:'credit_order_purpose_code')
        self.credit_order_purpose_code = attributes[:'credit_order_purpose_code']
      end

      if attributes.key?(:'wire_transfer_purpose_code')
        self.wire_transfer_purpose_code = attributes[:'wire_transfer_purpose_code']
      end

      if attributes.key?(:'deposit_in_court_identifier')
        self.deposit_in_court_identifier = attributes[:'deposit_in_court_identifier']
      end

      if attributes.key?(:'payment_description')
        self.payment_description = attributes[:'payment_description']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payment_value.nil?
        invalid_properties.push('invalid value for "payment_value", payment_value cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_value.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          clearinghouse_code == o.clearinghouse_code &&
          ispb_code == o.ispb_code &&
          credit_branch_office == o.credit_branch_office &&
          credit_current_account == o.credit_current_account &&
          check_digits_credit_current_account == o.check_digits_credit_current_account &&
          credit_payment_account == o.credit_payment_account &&
          individual_taxpayer_registration == o.individual_taxpayer_registration &&
          corporate_taxpayer_registration == o.corporate_taxpayer_registration &&
          payment_date == o.payment_date &&
          payment_value == o.payment_value &&
          debit_document == o.debit_document &&
          credit_document == o.credit_document &&
          credit_order_purpose_code == o.credit_order_purpose_code &&
          wire_transfer_purpose_code == o.wire_transfer_purpose_code &&
          deposit_in_court_identifier == o.deposit_in_court_identifier &&
          payment_description == o.payment_description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [clearinghouse_code, ispb_code, credit_branch_office, credit_current_account, check_digits_credit_current_account, credit_payment_account, individual_taxpayer_registration, corporate_taxpayer_registration, payment_date, payment_value, debit_document, credit_document, credit_order_purpose_code, wire_transfer_purpose_code, deposit_in_court_identifier, payment_description].hash
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
