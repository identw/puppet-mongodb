require 'securerandom'
require 'base64'

module Puppet
  module Util
    class MongodbScram256 < MongodbScram
      def digest
        @digest ||= OpenSSL::Digest::SHA256.new.freeze
      end
    end
  end
end
