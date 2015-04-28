module Shogun
 module Admin
   class UsersController < AdminController

     def index
        @users = Shogun::User.ordered
     end

   end
 end
end
