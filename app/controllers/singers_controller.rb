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
    singer = Singer.find_by(name: params["name"])
    if singer == nil
      Singer.create :name => params["name"]
      redirect_to "/singers", notice: "Singer added"
    else
      redirect_to "/singers", notice: "Singer already existed!"
    end
  end

end
