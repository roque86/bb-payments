=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module BancoBrasilPayments
  # Detalha a ocorrência da solicitação de pagamento.
  class BarcodeCollectionFormsIDResponseObjectListaOcorrencia
    # Código do motivo da ocorrência, conforme descrito a seguir.  Domínio: 1 - Agência de crédito igual a zero. Informe o nº da Agência de Crédito. 2 - Conta de crédito não é numérica. Informe apenas números. 3 - Dígito conta de crédito igual a espaços. Informe o DV da conta de crédito. 4 - CPF não é numérico. Informe apenas números. 5 - CNPJ não é numérico. Informe apenas números. 6 - Data do pagamento igual a zeros. Informe a data do pagamento. 7 - Data do pagamento inválida. Informe uma data de pagamento válida. 8 - Valor do pagamento não é númerico. Informe apenas números. 9 - Valor do pagamento igual a zeros. Informe o valor do pagamento. 10 - Ambos os campos Número Compensação e Número ISPB estão zerados. Informe um dos campos. 11 - Ambos os campos Número Compensação e Número ISPB foram informados. Informe apenas um dos campos. 12 - Ambos os campos Finalidade DOC e Finalidade TED estão zerados. Informe um dos campos. 13 - Ambos os campos Finalidade DOC e Finalidade TED foram informados. Informe apenas um dos campos. 14 - Número depósito judicial igual a espaços.  15 - Digito da conta de crédito inválido.  16 - Ambos os campos CPF e CNPJ foram informados. Informe apenas um dos campos. Caso informado os 2 campos, nas consultas será exibido apenas os dados do CPF. 17 - Ambos os campos CPF e CNPJ estão zerados. Informe um dos campos. 18 - Digito do CPF inválido. Verifique o dado informado. 19 - Dígito do CNPJ inválido. Verifique o dado informado. 20 - Agência e conta de crédito estão iguais a de débito. Opção não permitida. 21 - Número Compensação inválido. Verifique o dado informado. 22 - Número ISPB diferente de zeros. Não informe o nº ISPB. 23 - Conta de crédito igual a zeros. Informe o número da conta de crédito. 24 - CPF igual a Zeros. Obrigatório informar o nº do CPF. 25 - CNPJ diferente de zeros. Não permitido informar CNPJ. 26 - Conta de crédito diferente de zeros. Não permitido informar Conta de crédito. 27 - Dígito conta de crédito diferente de espaços. Não informar dígito da conta de crédito. 28 - Finalidade DOC diferente de zeros. Não informar finalidade DOC. 29 - Finalidade TED diferente de zeros. Não informar finalidade TED. 30 - Número Depósito Judicial diferente de espaços. Não informar finalidade Depósito Judicial. 31 - Número do documento de crédito não é numérico. Informar números. 32 - Número do documento de débito não é numérico. Informar números. 33 - CPF não encontrado na base da receita federal. 34 - CNPJ não encontrado na base da receita federal. 35 - Conta de poupança não permitido. Para creditar poupança utilize Código Produto igual a 128 - Pagamentos Diversos. 36 - Código COMPE deve ser igual a 1. 37 - Código ISPB deve ser igual a 0. 38 - Código de barras não é numérico. Informar números. 39 - Código de barras igual a zeros. Informar números. 40 - Número de inscrição do pagador não é numérico. Informar números. 41 - Número de inscrição do beneficiário não é numérico. Informar números. 42 - Número de inscrição do avalista não é numérico. Informar números. 43 - Digito do CPF para o pagador inválido. Verifique o nº correto. 44 - Digito do CPF para o beneficiário inválido. Verifique o nº correto. 45 - Digito do CPF para o avalista inválido. Verifique o nº correto. 46 - Digito do CNPJ para o pagador inválido. Verifique o nº correto. 47 - Digito do CNPJ para o beneficiário inválido. Verifique o nº correto. 48 - Digito do CNPJ para o avalista inválido. Verifique o nº correto. 49 - Data do vencimento inválida.  Informar data válida. 50 - Valor nominal não é numérico. Informar números. 51 - Valor de desconto não é numérico. Informar números. 52 - Valor de mora não é numérico. Informar números. 53 - Data do pagamento deve ser maior ou igual ao dia atual.  54 - Número do documento de débito igual a zeros. 55 - Data do vencimento igual a zeros. Informar data de vencimento. 56 - Nome do beneficiário não informado. 57 - Número de inscrição do beneficiário não informado. Obrigatório informar o CPF ou CNPJ do beneficiário. 58 - Conta pagamento diferente de espaços. Não informar conta pagamento. 59 - Ambos os campos conta de crédito e conta pagamento foram informados. Informar apenas um dos campos. 99 - Consultar o Banco para detalhar o erro. 200 - Insuficiência de Fundos - Débito Não Efetuado. 201 - Crédito ou Débito Cancelado pelo Pagador. 202 - Débito Autorizado pela Agência - Efetuado. 203 - Controle Inválido. Verificar campos 01, 02 e 03 do header ou segmento A, B, C, J, J52, N, O ou W do Arquivo CNAB240. Limitação de 80 carecteres para uso nos canais logados BB: Controle Inválido. Vide campos 01,02 e 03 do header/segmento do Arquivo CNAB240. 204 - Tipo de Operação Inválido. 205 - Tipo de Serviço Inválido. Utilize 20 para Pagamento a Fornecedores, 30 Pagamento de Salários ou 98 Pagamentos Diversos. 206 - Forma de Lançamento Inválida. Para crédito em Poupança utilize Pagamentos Diversos. Para crédito em Conta Pagamento utilize Pagamentos Diversos ou Pagamento a Fornecedores.  Para Pagamento de salário a conta de crédito deve ser do BB. 207 - Tipo/Número de Inscrição Inválido. CPF ou CNPJ inválido. 208 - Código de Convênio Inválido. 209 - Agência/Conta Corrente/DV Inválido. 210 - Nº Seqüencial do Registro no Lote Inválido. 211 - Código de Segmento de Detalhe Inválido. 212 - Lançamento inconsistente, rejeitado na prévia. Corrigir os dados do lançamento e enviar novo pagamento. 213 - Nº Compe do Banco para crédito Inválido. 214 - Nº do ISPB Banco, Instituição de Pagamento para crédito Inválido. 215 - Agência Mantenedora da Conta Corrente do Favorecido Inválida. 216 - Conta Corrente/DV/Conta de Pagamento do Favorecido Inválido. 217 - Nome do Favorecido Não Informado. 218 - Data Lançamento Inválido. 219 - Tipo/Quantidade da Moeda Inválido. 220 - Valor do Lançamento Inválido. 221 - Aviso ao Favorecido - Identificação Inválida. 222 - Tipo/Número de Inscrição do Favorecido Inválido CPF ou CNPJ do favorecido inválido. 223 - Logradouro do Favorecido Não Informado. 224 - Nº do Local do Favorecido Não Informado. 225 - Cidade do Favorecido Não Informada. 226 - CEP/Complemento do Favorecido Inválido. 227 - Sigla do Estado do Favorecido Inválida. 228 - Nº do Banco para crédito Inválido. 229 - Código/Nome da Agência Depositária Não Informado. 230 - Seu Número Inválido. 231 - Nosso Número Inválido. 232 - Inclusão Efetuada com Sucesso. 233 - Alteração Efetuada com Sucesso. 234 - Exclusão Efetuada com Sucesso. 235 - Agência/Conta Impedida Legalmente. 236 - Empresa não pagou salário Conta de crédito só aceita pagamento de salário. 237 - Falecimento do mutuário. 238 - Empresa não enviou remessa do mutuário. 239 - Empresa não enviou remessa no vencimento. 240 - Valor da parcela inválida. 241 - Identificação do contrato inválida. 242 - Operação de Consignação Incluída com Sucesso. 243 - Operação de Consignação Alterada com Sucesso. 244 - Operação de Consignação Excluída com Sucesso. 245 - Operação de Consignação Liquidada com Sucesso. 246 - Reativação Efetuada com Sucesso. 247 - Suspensão Efetuada com Sucesso. 248 - Código de Barras - Código do Banco Inválido. 249 - Código de Barras - Código da Moeda Inválido. 250 - Código de Barras - Dígito Verificador Geral Inválido. 251 - Código de Barras - Valor do Título Inválido. 252 - Código de Barras - Campo Livre Inválido. 253 - Valor do Documento Inválido. 254 - Valor do Abatimento Inválido. 255 - Valor do Desconto Inválido. 256 - Valor de Mora Inválido. 257 - Valor da Multa Inválido. 258 - Valor do IR Inválido. 259 - Valor do ISS Inválido. 260 - Valor do IOF Inválido. 261 - Valor de Outras Deduções Inválido. 262 - Valor de Outros Acréscimos Inválido. 263 - Valor do INSS Inválido. 264 - Lote Não Aceito. 265 - Inscrição da Empresa Inválida para o Contrato. 266 - Convênio com a Empresa Inexistente/Inválido para o Contrato. 267 - Agência/Conta Corrente da Empresa Inexistente/Inválido para o Contrato. 268 - Tipo de Serviço Inválido para o Contrato. 269 - Conta Corrente da Empresa com Saldo Insuficiente. 270 - Lote de Serviço Fora de Seqüência. 271 - Lote de Serviço Inválido. 272 - Arquivo não aceito. 273 - Tipo de Registro Inválido. 274 - Código Remessa / Retorno Inválido. 275 - Versão de layout inválida. 276 - Mutuário não identificado. 277 - Tipo do beneficio não permite empréstimo. 278 - Beneficio cessado/suspenso. 279 - Beneficio possui representante legal. 280 - Beneficio é do tipo PA (Pensão alimentícia). 281 - Quantidade de contratos permitida excedida. 282 - Beneficio não pertence ao Banco informado. 283 - Início do desconto informado já ultrapassado. 284 - Número da parcela inválida. 285 - Quantidade de parcela inválida. 286 - Margem consignável excedida para o mutuário dentro do prazo do contrato. 287 - Empréstimo já cadastrado. 288 - Empréstimo inexistente. 289 - Empréstimo já encerrado. 290 - Arquivo sem trailer. 291 - Mutuário sem crédito na competência. 292 - Não descontado – outros motivos. 293 - Retorno de Crédito não pago. 294 - Cancelamento de empréstimo retroativo. 295 - Outros Motivos de Glosa. 296 - Margem consignável excedida para o mutuário acima do prazo do contrato. 297 - Mutuário desligado do empregador. 298 - Mutuário afastado por licença. 299 - Primeiro nome do mutuário diferente do primeiro nome do movimento do censo ou diferente da base de Titular do Benefício. 300 - Benefício suspenso/cessado pela APS ou Sisobi. 301 - Benefício suspenso por dependência de cálculo. 302 - Benefício suspenso/cessado pela inspetoria/auditoria. 303 - Benefício bloqueado para empréstimo pelo beneficiário. 304 - Benefício bloqueado para empréstimo por TBM. 305 - Benefício está em fase de concessão de PA ou desdobramento. 306 - Benefício cessado por óbito. 307 - Benefício cessado por fraude. 308 - Benefício cessado por concessão de outro benefício. 309 - Benefício cessado: estatutário transferido para órgão de origem. 310 - Empréstimo suspenso pela APS. 311 - Empréstimo cancelado pelo banco. 312 - Crédito transformado em PAB. 313 - Término da consignação foi alterado. 314 - Fim do empréstimo ocorreu durante período de suspensão ou concessão. 315 - Empréstimo suspenso pelo banco. 316 - Não averbação de contrato – quantidade de parcelas/competências informadas ultrapassou a data limite da extinção de cota do dependente titular de benefícios. 317 - Lote Não Aceito - Totais do Lote com Diferença. 318 - Título Não Encontrado. 319 - Identificador Registro Opcional Inválido. 320 - Código Padrão Inválido. 321 - Código de Ocorrência Inválido. 322 - Complemento de Ocorrência Inválido. 323 - Alegação já Informada. 324 - Agência / Conta do Favorecido Substituída. 325 - Divergência entre o primeiro e último nome do beneficiário versus primeiro e último nome na Receita Federal. 326 - Confirmação de Antecipação de Valor. 327 - Antecipação parcial de valor. 328 - Boleto bloqueado na base. Não passível de pagamento. 329 - Sistema em contingência – Boleto valor maior que referência. 330 - Sistema em contingência – Boleto vencido. 331 - Sistema em contingência – Boleto indexado. 332 - Beneficiário divergente.  333 - Limite de pagamentos parciais do boleto excedido. Consulte o Beneficiário do boleto. 334 - Boleto já liquidado. Não passível de pagamento. 999 - Consultar o Banco para detalhar o erro.
    attr_accessor :codigo

    # Data em que o beneficiário do pagamento envio a devolução dos recursos.
    attr_accessor :data

    # Valor devolvido pelo beneficiário do pagamento. Pode ser parcial.
    attr_accessor :valor

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'codigo' => :'codigo',
        :'data' => :'data',
        :'valor' => :'valor'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'codigo' => :'Object',
        :'data' => :'Object',
        :'valor' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancoBrasilPayments::BarcodeCollectionFormsIDResponseObjectListaOcorrencia` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancoBrasilPayments::BarcodeCollectionFormsIDResponseObjectListaOcorrencia`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'codigo')
        self.codigo = attributes[:'codigo']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'valor')
        self.valor = attributes[:'valor']
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
          codigo == o.codigo &&
          data == o.data &&
          valor == o.valor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [codigo, data, valor].hash
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
