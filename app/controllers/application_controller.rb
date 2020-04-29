class ApplicationController < ActionController::API
    # before_action :authorized <–– ERIC'S DOESN'T HAVE THIS BS

    def encode_token(payload)
        # storing secret as an environment variable makes it inaccessible to outsiders
        JWT.encode(payload, 'Late light, uneven mole-gnawed meadow')
        # returns a jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
    end

    # THE BELOW METHODS ARE RESPONSIBLE FOR DECODING A TOKEN

    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
   
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 'Late light, uneven mole-gnawed meadow', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
   
    def logged_in_user
      if decoded_token
        # decoded_token => [{'user_id=>2}, {'alg'=>'HS256'}]
        # or nil if we rescue a token decode error
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      end
    end
   
    def logged_in?
      !!logged_in_user
    end
   
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
