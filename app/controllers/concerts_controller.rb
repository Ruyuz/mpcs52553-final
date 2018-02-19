class ConcertsController < ApplicationController

  def index
  end

  def update
    concert = Concert.find_by(id: params["id"])
    concert.name = params["name"]
    concert.city = params["city"]
    concert.address = params["address"]
    concert.poster_url = params["poster_url"]
    concert.save
    redirect_to "/"
  end

  def destroy
    concert = Concert.find_by(id: params["id"])
    concert.delete
    redirect_to "/"
  end

  def create
    Concert.create :name => params["name"],
                 :city => params["city"],
                 :date => params["date"],
                 :time => params["time"],
                 :address => params["address"],
                 :poster_url => params["poster_url"]
    redirect_to "/"
  end

end
