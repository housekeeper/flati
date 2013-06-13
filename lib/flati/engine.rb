require "flati"
require 'rails'

module Flati
  class Engine < ::Rails::Engine
    engine_name 'flati'
    isolate_namespace Flati
  end
end
