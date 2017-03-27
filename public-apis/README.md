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
get "api/v1/weather" => "api/v1/weather#get_weather"
```

We need to make the corresponding controller and action.

Create a new directory in the `controllers` directory named `api` and inside of that create another directory named `v1`. Inside of the `v1` directory, add a controller file named `weather_controller.rb` and add the following lines:

```rb
class Api::V1::WeatherController < ApplicationController
  skip_before_action :authenticate_user!, only: [:get_weather]

  def get_weather
    render :json => Weather.get_weather_at_coordinates(params[:coordinates])
  end
end
```

Where's the Weather class coming from? We need to make it. Let's create a new `Weather` model that will handle the application logic for our weather service. In the models directory add a file names `weather.rb`. Let's add the following code to the file:

```ruby
class Weather
    def self.get_weather_at_coordinates(coordinates)
        lat = "37.8267"
        lon = "-122.4233"
        uri = URI.parse("https://api.darksky.net/forecast/#{ENV["DARK_SKY_API_KEY"]}/#{lat},#{lon}")

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        
        data = http.get(uri.request_uri)
        data.body
    end
end
```

### Making an HTTP request
Let's step through the code above in our console to learn about the various parts of an HTTP (Hyper Text Transport Protocol) request.
  * URI
  * host
  * port
  * ssl

### JSON data format
JSON is composed of key-value pairs much like Ruby hashes and JavaScript objects. It is currently the de facto way of transferring pieces of data across the web and has largely replaced XML. How can we explore that object in our browser? Let's use the API endpoint we just made!

### AJAX Request
How do we get the data off our server an into the browser without going directly to the URL and getting shown a bunch of jumbled text? We have to use JavaScript! JQuery provides us with an easy interface for making requests to our server - AJAX (Asynchronous Javascript and XML). Paste the following code into your index.html.erb file for your home view (landing page):

```js
$.ajax({
    url: 'api/v1/weather',
    type: 'GET',
    data: { lat: lat, lon: lng} ,
    contentType: 'application/json; charset=utf-8',
    success: function (response) {
        console.log(response);
    },
    error: function () {
        console.log(response);
    }
}); 
```

**Exercise 1**
Inside of our success function in the above AJAX object, we have access to the data that was sent from our server. Instead of just console logging our result, let's show it to our users. Use JQuery to select an element (maybe `.title-2`) and update its textContent to be either the current weather description, the current temperature, or a forecast.