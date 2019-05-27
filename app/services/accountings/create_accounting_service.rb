class CreateAccountingService < BaseService

    def run(params)

        if(! params.has_key?("date"))
            params["date"] = Date.today.strftime("%Y/%m/%d")
        end

        accounting = Accounting.create(
            user_id: @user.id,
            amount: params["amount"],
            category_id: params["category_id"],
            item: params["item"],
            date: params["date"],
            note: params["note"],
            payment_type: params["payment_type"]
        )

        p accounting.errors.full_messages
        
        return accounting.basic_info

    end
end