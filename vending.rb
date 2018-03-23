class VendingMachine
      def initialize(items_array, money)
      @money = money
      @items_array = items_array
    end

    def vend (c,m)
      return "Invalid selection! : Money in vending machine = #{rounding(@money)}" if !(@items_array.any? { |x| x[:code] == c })
      selected_item = @items_array.find {|x| x[:code] == c }
      return "Not enough money!" if selected_item[:price] > m
      return "#{selected_item[:name]}: Out of stock!" if selected_item[:quantity] <= 0
      selected_item[:quantity] -= 1
      @money = @money + selected_item[:price]
      return "Vending #{selected_item[:name]}#{(x = m - selected_item[:price]) == 0.00 ? '' : ' with '+rounding(x)+' change.'}"
    end

  def rounding(n)
    "%.2f" % n
  end
end

#word_array.each { |i| score_hash.each { |k, v| if v.include?(i) then score_array << k end } }
vending_machine = VendingMachine.new([{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
         {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
         {:name=>"Dairy Milk", :code=>"A03", :quantity=>1, :price=>0.65},
         {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25}],10000.000000)
p vending_machine.vend("Bread",30)
p vending_machine.vend("A03",0.90)
