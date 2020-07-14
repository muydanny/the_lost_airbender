class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end

