#!/usr/bin/env ruby
# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
begin
  require "bundle/bundler/setup"
rescue LoadError
  puts "Couldn't load 'bundle/bundler/setup'"
end
require 'json'
require "alfred"
require "lib/hipchat_emoticons"
require "lib/emoticon"

def generate_feedback(alfred, query)
  feedback  = alfred.feedback
  queries   = query.split
  emoticons = HipchatEmoticons.emoticons

  HipchatEmoticons.select!(emoticons, queries)
  emoticons.each { |emoticon| feedback.add_item(HipchatEmoticons.item_hash(emoticon)) }

  puts feedback.to_alfred
end

Alfred.with_friendly_error do |alfred|
  alfred.with_rescue_feedback = true
  query = ARGV.join(' ').strip
  generate_feedback(alfred, query)
end
