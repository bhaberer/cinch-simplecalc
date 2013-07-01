require 'calc'
require 'cinch'
require 'cinch-cooldown'

module Cinch::Plugins
  class SimpleCalc
    include Cinch::Plugin

    enforce_cooldown

    self.help = "Use .math <problem> to do math. (i.e. .math 2 + 2)"

    match /math (.+)/

    def execute(m, problem)
      m.reply calc(problem), true
    end

    private

    def calc(problem)
      answer = Calc.evaluate(problem)
      return "#{Calc.evaluate(problem)}" unless answer == problem
    rescue ZeroDivisionError
      return "Fuck you."
    end
  end
end
