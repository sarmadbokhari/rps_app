module RPS
  class ListActiveMatches < UseCase

    def run(inputs)
      matches = RPS.db.ls_matches
      return failure(:there_are_no_matches) if matches.length == 0

      active_matches = list_active_matches
      return failure(:there_are_no_active_matches) if active_matches.length == 0
      # Return a success with relevant data
      success :matches => active_matches
    end

    def list_active_matches
      all_matches = RPS.db.ls_matches
      match_arr = []
      all_matches.each do |match|
        if !match.status
          match_arr << match
        end
        match_arr
      end
    end

  end
end
