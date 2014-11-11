class App < Sinatra::Base
  enable :sessions

  get '/:user_id/' do |user_id|
    @user = User.get(user_id.to_i)
    @categories = Category.all
    @activities = Activity.all
    @samples = User.samples
    slim :index
  end

end