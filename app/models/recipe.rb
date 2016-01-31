class Recipe < ActiveRecord::Base

  def ingredient_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_preptime
    hours = preptime.to_i / 60 
    minutes = preptime.to_i % 60

    if hours > 0 && minutes > 0
      "#{hours} Hours, #{minutes} Minutes"  
    elsif hours == 0 
      "#{minutes} Minutes"
    else
      "#{hours} Hours"
    end
  end

  def friendly_updated_at
    updated_at.strftime("%b %e, %Y")
  end
    
end
