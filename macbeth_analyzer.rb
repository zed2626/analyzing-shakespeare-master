require './lib/downloader'
require './lib/xml_parser'
require './lib/character_line_counter'
require './lib/hash_printer'

macbeth_xml = Downloader.download_macbeth
macbeth_xml_document = XmlParser.parse_xml(macbeth_xml)
macbeth_character_line_count = CharacterLineCounter.character_line_count(macbeth_xml_document)
HashPrinter.print_hash(macbeth_character_line_count)
