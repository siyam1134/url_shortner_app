class UrlShortensController < ApplicationController
    
    after_action :increment, only: %i[redirect_url_to]

    def new
    end

    def shorten_url
        find_random_characters
        saving_url = ShortenUrl.new
        saving_url.original_url = params[:url]
        saving_url.short_url = shortened_url(@strings)
        saving_url.ip_address = request.remote_ip
        results = Geocoder.search(request.remote_ip)
        saving_url.countries = results.first.country.to_s
        saving_url.save!
        data = {string: shortened_url(@strings),original_string: saving_url.original_url}
        respond_to do |format|
            format.json { render json: data }
        end
    end
    
    def redirect_url_to
        @actual_url = ShortenUrl.find_by_id(params[:id])
        days_active = (Time.now - (@actual_url.created_at)).to_i/86400
        redirect_to @actual_url.original_url if days_active!=30
    end
    def stats
        @urls = ShortenUrl.all
    end

    private

    def increment
        @actual_url.increment!(:total_clicks)
    end

    def find_random_characters
        o = [('a'..'z'),(0..9)].map(&:to_a).flatten
        @strings = (0...5).map { o[rand(o.length)] }.join
    end

    def shortened_url(strings)
        "https://localhost:3000/#{strings}"
    end
end
