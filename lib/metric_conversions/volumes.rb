module MetricConversions
  class Convertible
    @@standard_units = {"cup" => 8, "pint" => 16, "quart" => 32, "gallon" => 128, "ounce" => 1}
    @@metric_units = {"mL" => 0.0001, "L" => 1}
    def initialize(amount, unit)
      @amount = amount.to_i
      @unit = unit.to_s.downcase
      @metric = @@standard_units.keys.include?(@unit) ? "standard" : "metric" 
    end
    
    def to_what?
      p = @@standard_units.keys+@@metric_units.keys - [@unit]
      puts
      puts "Unit can convert to:"
      puts "_____________"
      p.each_with_index do |p, i|
        puts "| #{i+1}. : #{p} "
      end
    end
    
    def convert(to)
      if @@metric_units.keys.include?(to)
        if @metric == "metric"
          @amount = to == "mL" ? @amount * 1000 : @amount / 1000
        else
          @amount = @@metric_units[to]*@amount
          self.oz_to_liter
          @amount = @amount * @@metric_units[to]
        end
      elsif @@standard_units.keys.include?(to)
        if @metric == "standard"
          @amount = @amount * @@standard_units[@unit]
          @amount = @amount / @@standard_units[to]
        else
          self.liter_to_oz
          @amount = @amount / @@standard_units[to]
        end
      else
        raise "Invalid Unit"
      end
      @unit = to
    end
    
    def to_s
      puts "#{@amount.round(4)} #{@unit}" + (@amount != 1 ? "s" : "")
      
    end

    def oz_to_liter
      @amount = @amount * 0.0295735
      @unit = "liter"
      @metric = "metric"
    end
    
    def liter_to_oz
      @amount = @amount * 33.814
      @unit = "ounce"
      @metric = "standard"
    end
  end
  
  def self.volume(amount, unit)
    # creates Convertible that can be further mutated
    Convertible.new(amount, unit)
  end  
end





