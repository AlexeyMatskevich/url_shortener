# Patches from https://github.com/toptal/crystalball/pull/125

module Crystalball
  class MapGenerator
    class FactoryBotStrategy
      module FactoryRunnerPatch
        class << self
          def apply!
            FactoryBotStrategy.factory_bot_constant::FactoryRunner.prepend FactoryRunnerPatch
          end
        end

        def run(*)
          factory = FactoryBotStrategy.factory_bot_constant.factories.find(@name)
          FactoryBotStrategy.used_factories << factory.name.to_s
          super
        end
      end
    end
  end
end
