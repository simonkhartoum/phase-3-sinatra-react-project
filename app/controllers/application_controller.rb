class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/regions' do
    Region.all.to_json
  end

  get '/regions/:id' do
    Region.find(params[:id]).to_json
  end

  get '/parkings' do
    Parking.all.to_json
  end

  get '/parkings/:id' do
    Parking.find(params[:id]).to_json
  end
  delete '/parkings/:id' do
    parking = Parking.find(params[:id])
    parking.destroy
    parking.to_json
  end
  post '/parkings' do
    region = Region.find_by(name: params[:region_name])

    if region
      parking = region.parkings.create(
        name: params[:name],
        lot_num: params[:lot_num],
        county: params[:county]
      )
      parking.to_json
    else
      { error: "Region not found" }.to_json
    end
  end
  patch '/parkings/:id' do
    parking = Parking.find(params[:id])
    parking.update(
      lot_num: params[:lot_num]
    )
    parking.to_json
  end
  get '/users' do
    User.all.to_json
  end
  post '/users' do
    user = User.create(
      fullnames: params[:fullnames],
      email: params[:email],
      phonenumber: params[:phonenumber],
      password: params[:password]
    )
    user.to_json
  end



end
