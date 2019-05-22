class CreateAccountingService < BaseService

    def run(params)

        accounting = Accounting.create!(
            user_id: @user.id,
            amount: params["amount"],
            category_id: params["category_id"]
        )
        return accounting

    end
end