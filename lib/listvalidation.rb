
class ListValidation
    def initialize
      @errors = Array.new
      @weapons = Array.new
      @maxswc = 0.0
      @currentswc = 0.0
      @actualpoints = 0
      @allowedpoints = 0
    end
    attr_accessor :errors,:weapons,:maxswc,:currentswc,:actualpoints,:allowedpoints
end
  