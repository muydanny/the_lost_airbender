class SearchResults

  def members(nation)
    require 'pry'; binding.pry
    parsed_response = AvatarService.new.members_of_nation(nation)

    @members = parsed_response[:results].map do |member_data|
      Member.new(member_data)
    end
  end
end