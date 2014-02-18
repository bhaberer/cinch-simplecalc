# -*- encoding : utf-8 -*-
require 'calc'
require 'cinch'
require 'cinch/cooldown'

module Cinch::Plugins
  # Simple Plugin to do quick math
  class SimpleCalc
    include Cinch::Plugin

    enforce_cooldown

    self.help = 'Use .math <problem> to do math. (i.e. .math 2 + 2)'

    match /math (.+)/

    def execute(m, problem)
      m.reply calc(problem), true
    end

    private

    def calc(problem)
      answer = Calc.evaluate(problem)
      answer unless answer == problem
    rescue ZeroDivisionError
      # Rescue against people being cute.
      "I'm sorry, Dave, I'm afraid I can't do that."
    end
  end
end
