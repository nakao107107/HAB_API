class DeleteAccountingService < BaseService

    def run(params)

        accounting = Accounting.find_by(id: params["id"], user_id: @user.id)

        return if accounting.nil?

        accounting.delete

        return accounting

    end
end