module SushisHelper
  def sushi_id_list
    @sushis = Sushi.all
    
    ids = Array.new
    
    @sushis.each do |sushi|
      ids.push(sushi.id)
    end
    
    return ids
  end
  
  def sushi_codes
    ["name" , "description"]
  end
  
  def get_sushi_text(id, code, locale)
    return SushiText.first( :all, 
      :conditions => { :sushi_id => id, :code => code, :lang => locale })
  end
end
