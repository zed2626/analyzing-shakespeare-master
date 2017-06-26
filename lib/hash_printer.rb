class HashPrinter
  def self.print_hash(hash)
    hash.each do |key, value|
      puts "#{value} #{key}"
    end
  end
end
