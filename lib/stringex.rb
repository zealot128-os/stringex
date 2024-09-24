# encoding: UTF-8

require 'ostruct'
require 'stringex/configuration'
require 'stringex/localization'
require 'stringex/string_extensions'
require 'stringex/unidecoder'
require 'stringex/acts_as_url'
require 'stringex/version'

require 'stringex/core_ext'

if defined?(::ActiveRecord) && defined?(::ActiveSupport)
  ::ActiveSupport.on_load(:active_record) do
    Stringex::ActsAsUrl::Adapter.load_available
  end
else
  Stringex::ActsAsUrl::Adapter.load_available
end

if defined?(Rails::Railtie)
  require 'stringex/rails/railtie'
end
