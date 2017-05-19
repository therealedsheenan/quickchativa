module ApplicationCable
  class Channel < ActionCable::Channel::Base
    # identified_by :current_user
    #
    # def connect
    #   true
    #   self.current_user = find_verified_user
    # end
    #
    # private
    # def find_verified_user
    #   true
    #   # if verified_user = User.find_by(id: cookies.signed[:user_id])
    #   #   verified_user
    #   # else
    #   #   reject_unauthorized_connection
    #   # end
    # end
  end
end
