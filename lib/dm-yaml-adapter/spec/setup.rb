require 'dm-yaml-adapter'
require 'dm-core/spec/spec_helper'

require 'tempfile'

module DataMapper
  module Spec
    module Adapters

      class YamlAdapter < Adapter
        def connection_uri
          "yaml://#{Dir.tmpdir}/#{storage_name}"
        end
      end

      use YamlAdapter

    end
  end
end

