require "haml-sprockets/version"
require 'tilt'
require 'sprockets'
module Haml
  module Sprockets
    class Template < ::Tilt::Template
      def self.engine_initialized?
        true
      end
      def initialize_engine
      end
      def prepare
      end
      def evaluate(scope,locals,&block)
        "Haml(#{data.inspect}, {escapeHtmlByDefault:true})"
      end
    end
  end
end
Sprockets::Engines
Sprockets.register_engine '.hamljs', Haml::Sprockets::Template
require 'haml-sprockets/engine' if defined?(Rails)
