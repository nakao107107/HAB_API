class ApplicationController < ActionController::API

    before_action :authorize

    def authorize

        auth_service = AuthService.new()
        
        authorization = request.headers["Authorization"]

        if authorization.nil?

            render json: {
                "message": "headerにAuthorizationを指定してください"
            },
            status: :unauthorized and return

        end

        @user = auth_service.authorize(authorization)
        
        if @user.nil?

            render json: {
                "message": "許可されていないユーザーのアクセスです"
            },
            status: :unauthorized and return

        end
    end
end
