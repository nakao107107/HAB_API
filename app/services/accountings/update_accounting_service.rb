class UpdateAccountingService < BaseService

    def run (params)

        accounting = Accounting.find_by(id: params["id"], user_id: @user.id)

        return if accounting.nil?

        accounting.update!(
            amount: params["amount"],
            category_id: params["category_id"]
        )

        return accounting

    end
end