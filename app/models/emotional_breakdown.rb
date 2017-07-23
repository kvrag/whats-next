class EmotionalBreakdown 

  def self.request(form_input)
    req_url = "https://www.emoj.ai/api/classify?text=#{form_input}&token=#{ENV['EMOJ_TOKEN']}"
    uri = URI.parse(URI.encode(req_url))
    emoj_response = Net::HTTP.get(uri)
    JSON.parse(emoj_response)
  end

end