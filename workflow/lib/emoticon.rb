require 'json'

class Emoticon
  VENDOR_DIR = File.expand_path("../../vendor", __FILE__)

  attr_reader :shortcut, :image, :image_path
  def initialize(data={})
    if data
      @shortcut   = data["shortcut"]
      @image      = data["image"]
      @image_path = "#{VENDOR_DIR}/icons/#{image}"
    end
  end

  def self.import_all
    JSON.parse(File.open("#{VENDOR_DIR}/emoticons.json", "r").read()).collect do |emoticon|
      Emoticon.new(emoticon)
    end
  end
end