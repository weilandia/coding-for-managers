# Solutions

One way of doing could be to add this in your `index.html.erb` file:

```JavaScript
navigator.geolocation.getCurrentPosition((location) => {
  var latitude = location.coords.latitude
  var longitude = location.coords.latitude

    $.ajax({
          url: 'api/v1/weather',
          type: 'GET',
          data: { lat: latitude, lon: longitude} ,
          contentType: 'application/json; charset=utf-8',
          success: function (response) {
            $(".title-2").replaceWith("<h2 class='title-2'>It is currently "+ response["currently"]["temperature"] + " degrees</h2>");
          },
          error: function () {
              console.log(response);
          }
      });
});
```
