require "flati"
require 'rails'
require 'coffee-rails'
require 'sass/rails'


module Flati
  class Engine < ::Rails::Engine
    engine_name 'flati'
    isolate_namespace Flati

    initializer "app.helpers.flati.application_helper" do |app|
      ActionView::Base.send :include, Flati::ApplicationHelper
    end

    config.generators do |g|
      g.test_framework  :rspec, :view_specs => false
      g.template_engine :haml
      g.orm             :active_record
    end

  end
end
