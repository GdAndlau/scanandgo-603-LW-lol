// import mapboxgl from 'mapbox-gl';
// import 'mapbox-gl/dist/mapbox-gl.css';


const getCoordinates = () => {
  if ( navigator.geolocation )  {
    navigator.geolocation.getCurrentPosition( function(position) {
        var lng = position.coords.longitude;
        var lat = position.coords.latitude;
        // const getLocation = () => {
          fetch("/geolocation/location", {
            method: "POST",
            body: JSON.stringify({ langtitude: lat, longtitude: lng })
          })
            .then(response => response.json())
            .then((data) => {
              console.log(data); // Look at local_names.default
            });
        // };
        // getLocation();
        console.log(lat);
      }
    );
  };
}





export { getCoordinates };
