require "spec_helper"

describe TranslateYandex do
  # Teste 1 (Translate)
  describe "GET api/v1.5/tr.json/translate (Translate)" do
    it "Api response == 200" do
      textPt = "Nós estamos testando o tradutor"
      yandexApi = TranslateYandex::Yandex.new TEST_API_KEY
      response = yandexApi.translate textPt, "en"
      expect(response["code"]).to eq(200)
    end

    it "translated text match" do
      textPt = "Nós estamos testando o tradutor"
      textEn = "We are testing the translator"
      yandexApi = TranslateYandex::Yandex.new TEST_API_KEY
      response = yandexApi.translate textPt, "en"

      expect(response["text"].first).to eq(textEn)
    end
  end

  # Teste 2 (supported list of languages)
  describe "GET api/v1.5/tr.json/getLangs (Supported List)" do
    it "Api response not equal nil or empty '' " do
      yandexApi = TranslateYandex::Yandex.new TEST_API_KEY
      response = yandexApi.list
      expect(response).not_to eq(nil)
      expect(response).not_to eq("")
    end
  end

  # Teste 3 (Language Detect)
  describe "GET api/v1.5/tr.json/detect (Detect)" do
    it "Api response == 200" do
      textPt = "Nós estamos testando o tradutor"
      yandexApi = TranslateYandex::Yandex.new TEST_API_KEY
      response = yandexApi.detect textPt
      expect(response["code"]).to eq(200)
    end

    it "detect language match with right language" do
      textPt = "Nós estamos testando o tradutor"
      yandexApi = TranslateYandex::Yandex.new TEST_API_KEY
      response = yandexApi.detect textPt
      expect(response["lang"]).to eq("pt")
    end
  end
end
