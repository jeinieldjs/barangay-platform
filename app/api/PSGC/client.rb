require_relative 'request'

module PSGC
    class Client
        def self.fetch_provinces
            response = Request.call(http_method: 'get', endpoint: "/provinces/" )
        end

        def self.fetch_cities_municipalities(province_code)
            response = Request.call(http_method: 'get', endpoint: "/provinces/#{province_code}/cities-municipalities" )
        end

        def self.fetch_barangays(city_or_municipality_code)
            response = Request.call(http_method: 'get', endpoint: "/cities-municipalities/#{city_or_municipality_code}/barangays" )
        end
    end
end
