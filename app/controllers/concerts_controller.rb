class ConcertsController < ApplicationController
  def show
      # @concert = Concert.find_by(id: params["id"])
      respond_to do |format|
        format.html do
          render 'show'
        end
        format.json do
          @concert = Concert.find_by(id: params["id"])
          render json: @concert
        end
        format.xml do
          @concert = Concert.find_by(id: params["id"])
          render xml: @concert
        end
      end
    end

    def index
      if params["keyword"].present?
        @concerts = Concert.joins(:singer).where([
          "lower(concerts.name) LIKE ? OR lower(singers.name) LIKE ?",
          "%#{params["keyword"].downcase}%",
          "%#{params["keyword"].downcase}%"])
        print(@concerts)
      else
        @concerts = Concert.all.limit(100).order('created_at desc')
      end

      respond_to do |format|
        format.html do
          # render html: '<p>Howdy......</p>'
          render 'index'
        end
        format.json do
          render json: @concerts
        end
        format.xml do
          render xml: @concerts
        end
      end
    end


  def update
    concert = Concert.find_by(id: params["id"])
    concert.name = params["name"]
    concert.city = params["city"]
    concert.address = params["address"]
    concert.poster_url = params["poster_url"]
    concert.date = params["date"]
    concert.time = params["time"]
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
