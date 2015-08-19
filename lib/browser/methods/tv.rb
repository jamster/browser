class BVBrowser
  module Tv
    # Detect if browser is Television
    def tv?
      !!(ua =~ /tv/i)
    end
  end
end
