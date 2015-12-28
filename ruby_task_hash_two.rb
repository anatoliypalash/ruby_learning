class HashToSym
  def initialize
    @hashik =  { 'yes' => 23, 'b' => 'travel', 'yesterday' => 34,
                5 => '234', :yesss => :fg, try: {'yesterday1' => 34,
                'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}],
                'yesterday1' => 34, 'yesteryear' => 2014 }
  end

  def sym_hash my_hash = @hashik
    my_hash.keys.each do |key|
      my_hash[(key.to_sym rescue key) || key] = my_hash.delete(key)
      if my_hash[key].is_a?(Hash)
        sym_hash my_hash[key]
      elsif my_hash[key].is_a?(Array)
        my_hash[key].each do |a|
          sym_hash a
        end
      end
    end
  end
end

my_hash = HashToSym.new

my_hash.sym_hash

p my_hash
