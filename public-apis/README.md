[List of public APIs](https://github.com/toddmotto/public-apis)
[Another collection of public APIs](https://any-api.com/)

# APIs

|Objectives|
|----------|
|Understand the role of an API|
|Learn about environment variables|
|Learn how to create a custom Rails route|
|Learn how to make an HTTP request with an API key|
|Understand the JSON data format|
|Learn how to make an AJAX request|


### The role of an API
Public APIs are designed to allow external clients to access data on a server. Clients, in this case, can be user devices or other web servers. Large companies like the New York Times offer access to items like old articles through theie API. Some APIs completely open, and other require authentication. A common form of authentication is an API key. Every API has its own set of rules of interaction that a developer must understand by reading the API's documentation (the quality of documentation can vary wildly!).

Today we'll be using Dark Sky's weather API.

Visit https://darksky.net/dev/ and sign up for an account. It's completely free up to 1000 requests per day.

Now that we've gotten an API key, let's add that to our rails project as an environment variable.

### Environment Variables
Environment variable are usually small pieces of configuration data that you want accessible everywhere (globally) within you app. Often, these are API keys, passwords, email addresses and URLs. This is a good DRY convention and helps developers centralize important information in a single place.

Add the following line to your `development.rb` config file with your unique API key:

```rb
ENV["DARK_SKY_API_KEY"] = "your dark sky api key"
```

Let's see how we can access that in our Rails app.

`$ rails c`
`> ENV["DARK_SKY_API_KEY"]`

https://darksky.net/dev/docs/forecast

### Custom Routing in Rails
Routing in rails is as easy as specifying an HTTP method (`GET`, `POST` etc.), a url string (`properties/ranches/`), and a corresponding controller and action combo (`properties#show_ranches`) in the routes file.

Let's create a custom route for our weather service in `routes.rb`.

```rb
get "weather" => "weather#get_weather"
```

We need to make the corresponding controller and action.

Create a new controller file called `weather_controller.rb` and add the following lines:

```rb
class WeatherController < ApplicationController
  def get_weather
    render :json => Weather.get_weather_at_coordinates(params[:coordinates])
  end
end
```



```ruby
class Weather
    def self.get_weather_in_sf
        uri = URI.parse("https://api.darksky.net/forecast/4e462be9ffa5f2bdf402db75864370f7/37.8267,-122.4233")
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        data = http.get(uri.request_uri)
        parsed_body_data = JSON.parse(data.body)
        parsed_body_data["currently"]
    end
end
```

```ruby
get "weather" => "weather#get_weather"
```

```ruby
class WeatherController < ApplicationController
  def get_weather
    render :json => Weather.get_weather_at_coordinates(params[:coordinates])
  end
end
```

```js
$.ajax({
    url: 'weather',
    type: 'GET',
    data: { lat: lat, lng: lng} ,
    contentType: 'application/json; charset=utf-8',
    success: function (response) {
        console.log(response);
    },
    error: function () {
        console.log(response);
    }
}); 
```




uri = URI('http://example.com/cached_response')
req = Net::HTTP::Get.new(uri.request_uri)

require 'net/http'
require 'uri'
uri = URI('https://api.darksky.net/forecast/4e462be9ffa5f2bdf402db75864370f7/37.8267,-122.4233')
req = Net::HTTP::Get.new(uri.request_uri)
res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)

end

ForecastIO.configure do |c|
  c.api_key = "4e462be9ffa5f2bdf402db75864370f7"
end

$.ajax({
        url: 'weather',
        type: 'GET',
        data: { lat: lat, lng: lng} ,
        contentType: 'application/json; charset=utf-8',
        success: function (response) {
            //your success code
        },
        error: function () {
            //your error code
        }
    }); 

## Google Sheets

go to: https://developers.google.com/sheets/api/quickstart/ruby

Step 1: Turn on the Google Sheets API. Use the wizard!
  * Add credentials to your project
  * Which API are you using? `Google Sheets API`
  * Where will you be calling the API from? `Web server`
  * What data will you be accessing? `Application Data`
  * Service account name? `rails blog`
  * Role? `owner`
  * Key type? `JSON`




`gem 'rest-client'`
`bundle install`

 
 

 def send_simple_message
    RestClient.post "https://api:key-6fc1ef9ffcd281f295aa4e1b7ba355f8"
        "@api.mailgun.net/v3/sandbox76993f9f5efb4b39a308b7c886862ea4.mailgun.org/messages",
        :from => "Mailgun Sandbox <postmaster@sandbox76993f9f5efb4b39a308b7c886862ea4.mailgun.org>",
        :to => "charlie <cdepman@gmail.com>",
        :subject => "Hello charlie",
        :text => "Congratulations charlie, you just sent an email with Mailgun!  You are truly awesome!"
end


`gem install`

