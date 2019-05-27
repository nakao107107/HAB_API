class UpdateAccountingService < BaseService

    def run (params)

        accounting = Accounting.find_by(id: params["id"], user_id: @user.id)

        return if accounting.nil?

        accounting.update!(
            payment_type: params["payment_type"],
            amount: params["amount"],
            category_id: params["category_id"],
            item: params["item"],
            note: params["note"]
        )

        return accounting.basic_info

    end
end