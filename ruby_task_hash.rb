class Hashwork
  def initialize
    @hashik =  {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 
                5 => '234', :yesss => :fg, try: 30, key: 'some value', 
                'yesterday1'  => 34, 'gyesteryear' => 2014 }
  end

  def hash_key_sum
    count = 0
    @hashik.each_key { |k| count += 1 if k.to_s.match(/^yes/)  }
    p count    
  end
end

hashh = Hashwork.new

hashh.hash_key_sum
