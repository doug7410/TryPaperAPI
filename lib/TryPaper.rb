require "TryPaper/version"

module TryPaper

  class Mailing

    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end

  end

end

