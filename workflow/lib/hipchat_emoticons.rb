module HipchatEmoticons
  def self.emoticons
    Emoticon.import_all
  end

  def self.select!(emoticons, queries)
    queries.each do |q|
      emoticons.reject! { |e| e.shortcut.index(q.downcase) ? false : true }
    end
    emoticons
  end

  def self.item_hash(emoticon)
    {
      :uid      => '',
      :title    => emoticon.shortcut,
      :subtitle => "Copy to clipboard: #{emoticon.shortcut}",
      :arg      => emoticon.shortcut,
      :icon     => { :type => 'default', :name => "#{emoticon.image_path}" },
      :valid    => 'yes',
    }
  end
end