class CharacterLineCounter
  def self.character_line_count(nokogiri_xml_document)
    character_line_count = {}

    nokogiri_xml_document.xpath('//SPEECH').each do |speech|
      speaker = speech.css('SPEAKER').text
      speaker_line_count = speech.css('LINE').count

      next if  speaker == 'ALL'

      character_line_count[speaker] ||= 0

      character_line_count[speaker] += speaker_line_count
    end

    character_line_count
  end
end
