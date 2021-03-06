class Shoes
  class FakeAbsoluteElement
    include Common::Inspect
    include Common::Visibility
    include Common::Positioning
    include Common::Remove

    include Shoes::DimensionsDelegations

    def initialize
      @dimensions = AbsoluteDimensions.new 0, 0, 100, 100
    end

    def add_child(element)
      true
    end

    def adjust_current_position(*_)
    end

    # Fake this out instead of using Common::Style to avoid things like touching
    # app level styles, etc. that we don't need for testing purposes
    def style
      @style ||= {}
      @style
    end

    attr_accessor :dimensions, :parent, :gui
  end
end
