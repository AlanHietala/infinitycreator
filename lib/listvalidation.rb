
class ListValidation
    def initialize
      @errors = Array.new
      @weapons = Array.new
      @combatgrouporders = Array.new
      @modelcount = Array.new
      @maxswc = 0.0
      @currentswc = 0.0
      @actualpoints = 0
      @allowedpoints = 0
      @bbcode = ""
    end
    attr_accessor :bbcode,:errors,:weapons,:maxswc,:currentswc,:actualpoints,:allowedpoints,:combatgrouporders,:modelcount
end
  