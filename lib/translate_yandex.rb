require "translate_yandex/version"
require "rest-client"
require "json"

module TranslateYandex
  class Yandex

    # Aqui nós recebemos a chave da Api quando o usuário inicializa a nossa classe
    def initialize(api_key)
      @api_key = api_key
    end

    # Nosso método de tradução
    def translate text, language
      result =  RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/translate', {params: {key: @api_key, text: text, format: 'plain', lang: language}}
      JSON.parse(result.body)
    end

    # Nosso método para receber a lista de idiomas que a API conhece
    def list
      result =  RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/getLangs', {params: {key: @api_key}}
      JSON.parse(result.body)
    end

    # Nosso método que identifica o idioma de uma frase
    def detect text
      result =  RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/detect', {params: {key: @api_key, text: text}}
      JSON.parse(result.body)
    end
  end
end
