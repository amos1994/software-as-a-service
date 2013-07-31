class Dessert
  def initialize(name, calories)
    @name, @calories = name, calories
  end

  def getName
    @name
  end

  def getCalories
    @calories
  end

  def setName = (name)
    @name = name
  end

  def setCalories = (value)
    @calories = value
  end
  
  def healthy?
    if @calories < 200
	return true
    end
    false
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name, @calories, @flavor = name, calories, flavor
  end
  
  def setFlavor = (flavor)
    @flavor = flavor
  end

  def getFlavor
    @flavor
  end

  def delicious?
    if flavor == 'black licorice'
      return false
    end
    true
  end

end
