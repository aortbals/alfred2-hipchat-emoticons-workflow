require 'json'
require 'pry'

class HipchatEmoticons
  URL = "https://raw.github.com/henrik/hipchat-emoticons/master/emoticons.json"

  def self.search(query="")
    results = shortcuts.select do |i|
      i.include? query
    end
    puts results
  end

  private

  def self.shortcuts
    @shortcuts ||= json.map { |i| i["shortcut"] }
  end

  def self.json
    @json ||= JSON.parse(response)
  end

  def self.response
    @response ||= `curl #{URL}`
  end
end

if ARGV.length > 0
  HipchatEmoticons.search ARGV.join(" ")
else
  puts "Usage: hipchat_emoticons.rb [query]"
end