# frozen_string_literal: true

module Browser
  class Platform
    class Windows < Base
      VERSION_REGEX = /Windows NT\s*([0-9_\.]+)?/
      MATCH_REGEX = /Windows/
      NAME = "Windows".freeze

      def version
        browser.ua[VERSION_REGEX, 1] || DEFAULT_VERSION
      end

      def name
        NAME
      end

      def id
        :windows
      end

      def match?
        browser.ua =~ MATCH_REGEX
      end
    end
  end
end
