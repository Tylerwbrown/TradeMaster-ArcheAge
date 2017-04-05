class Region
  def self.continent_list
    ['Nuia', 'Haranya']
  end

  def self.list_for_form(region)
    l = case region.to_s.downcase.to_sym
    when :all
      list
    when :nuia
      nuia_region_list
    when :haranya
      haranya_region_list
    end
    l.map.with_index { |item, index| [item.to_s.gsub('_', ' ').titleize, index] }
  end

  def self.list
    nuia_region_list + haranya_region_list
  end

  def self.nuia_region_list
    [
      :solzreed_peninsula, :gweonid_forest, :aubre_cradle,
      :lilyut_hills, :dewstone_plains, :white_arden, :marianople,
      :two_crowns, :halcyona, :hellswamp, :sanddeep, :karkasse_ridgelands
    ]
  end

   def self.haranya_region_list
     [
       :acrum_iris, :falcorth_plains, :sunbite_wilds, :tigerspine_mountains,
       :mahadevi, :solis_headlands, :villanelle, :silent_forest, :ynystere,
       :rookborne_basin, :windscour_savannah, :perinoor_ruins, :hasla
     ]
   end
end
