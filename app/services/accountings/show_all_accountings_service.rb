class ShowAllAccountingsService < BaseService

    def run(params)
        accoutings = Accounting.where(user_id: @user.id)

        if params.has_key?("date")

            date = DateTime.parse(params["date"])
            range = date.beginning_of_day..date.end_of_day
            accoutings = accoutings.where(date: range)

        end

        return accoutings.map(&:basic_info)
    end

end