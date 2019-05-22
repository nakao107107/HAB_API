require "jwt"

class AuthService

    def authorize(jwt)

        tks = jwt.split(".")
        user_name = JSON.parse(Base64.decode64(tks[1]))["cognito:username"]
        user = User.find_by(name: user_name)
        return user

    end

end