module LitmusAnalytics
  class Base
    include RestClient

    def initialize(api_key, api_pass, api_host="analytics-api.litmus.com", api_version="v1", ssl=true)
      uri = base_url(api_host, api_version, ssl)
      @rest_client = RestClient::Resource.new(uri, :user => api_key, :password => api_pass)
    end
    
    def base_url(api_host, api_version, ssl)
      ssl ? scheme = 'https' : scheme = 'http'
      "#{scheme}://@#{api_host}/api/#{api_version}"
    end

    def post(path, data, accept="application/json")
      response = @rest_client[path].post(data, {:accept => accept})
    end

    def put(path, data, accept="application/json")
      response = @rest_client[path].put(data, {:accept => accept})
    end

    def get(path, params=nil, accept="application/json")
      if params
        response = @rest_client[path].get(:params => params, :accept => accept)
      else
        response = @rest_client[path].get(:accept => accept)
      end
    end

  end
end