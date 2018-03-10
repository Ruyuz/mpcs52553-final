class SingersController < ApplicationController

  def update
    singer = Singer.find_by(id: params["id"])
    singer.name = params["name"]
    singer.save
    redirect_to "/singers"
  end

  def destroy
    singer = Singer.find_by(id: params["id"])
    singer.delete
    redirect_to "/singers"
  end

  def create
    Singer.create :name => params["name"]
    redirect_to "/singers", notice: "Singer added"
  end

end
