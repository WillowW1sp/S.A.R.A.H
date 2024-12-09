require "groq"
require "tts"

#eventually will be changed to an env var
GROQ_API_KEY = "Your API KEY"


#these are irrelivant and just for initial tests
#client = Groq::Client.new # uses ENV["GROQ_API_KEY"] and "llama-3.1-8b-instant"
#client = Groq::Client.new(api_key: Groq.configuration.api_key, model_id: "llama-3.1-8b-instant")

#configure api key and LLM model
Groq.configure do |config|
  config.api_key = GROQ_API_KEY
  config.model_id = "llama-3.1-70b-versatile"
end
client = Groq::Client.new

#test chat, replace later with the text file from VTT
client.chat("why is the sky blue?") do |content|
#filter only message content
  ttseng = content
end

#TTS Engine
def say(word)
  s = "#{word}"
  repeatTimes = 1
  s.play("en", repeatTimes)
  puts
  puts "Successfully Said: #{word}"
end

say(ttseng)
