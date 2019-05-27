class ShowAccountingService < BaseService

    def run (params)

        accounting = Accounting.find_by(id: params["id"], user_id: @user.id)
        return accounting.basic_info

    end
end