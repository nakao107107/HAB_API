class ShowAllAccountingsService < BaseService

    def run
        accoutings = Accounting.where(user_id: @user.id)
        return accoutings
    end

end