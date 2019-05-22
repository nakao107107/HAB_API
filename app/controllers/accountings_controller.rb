class AccountingsController < ApplicationController

    def index

        show_all_accountings_service = ShowAllAccountingsService.new(@user)
        accountings = show_all_accountings_service.run()

        render json: accountings, status: :ok

        
    end

    def create
        
        create_accounting_service = CreateAccountingService.new(@user)
        accounting = create_accounting_service.run(params)

        render json: accounting, status: :ok

    end

    def update

        update_accounting_service = UpdateAccountingService.new(@user)
        accounting = update_accounting_service.run(params)

        if accounting.nil?

            render json: {

                message: "指定されたデータは存在しません"

            },status: :not_found and return

        end

        render json: accounting, status: :ok

    end

    def destroy

        delete_accounting_service = DeleteAccountingService.new(@user)
        accounting = delete_accounting_service.run(params)

        if accounting.nil?

            render json: {

                message: "指定されたデータは存在しません"

            },status: :not_found and return

        end

        render nothing: true, status: :ok

    end

end
