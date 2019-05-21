class ApplicationController < ActionController::API

    def authorize

        auth_service = AuthService.new()

        @user = auth_service.authorize(request.headers["Authorization"])
        
        if @user.nil?

            render json: {
                "message": "許可されていないユーザーのアクセスです"
            },
            status: :unauthorized and return

        end
    end
end
