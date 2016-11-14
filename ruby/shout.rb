module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!" + " :)"
  end
end

class Police
  include Shout
end

class LifeGuard
  include Shout
end

officer_smith = Police.new
puts officer_smith.yell_angrily("Drop the knife")

brian_the_lfe_guard = LifeGuard.new
puts brian_the_lfe_guard.yell_happily("You are a survivor")
