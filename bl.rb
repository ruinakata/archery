# equations
# v=a*t+vi
# x = xi +vi*t + 1/2(a*t^2) 
# x = xi + (v + vi)*t/2
# v^2 = vi^2 + 2a(x-xi)
#a=-9.81

class Archery

  attr_accessor :xvel, :yvel, :time

  def initialize (xvel, yvel, xpos=nil, ypos=nil)
    @xvel = xvel
    @yvel = yvel
    @time = time
    @xpos = xpos
    @ypos = ypos
  end

  def showxpos (time)
    @xpos = @xvel*time
    return @xpos
  end

  def showypos (time)
    @ypos = @yvel*time + 0.5*(-9.81*(time)^2) 
    if @ypos > 0
      return @ypos
    else
      return 0
    end
  end

end