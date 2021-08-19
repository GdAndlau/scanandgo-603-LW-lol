import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
// Is the above relevant?

mapboxgl.accessToken = 'pk.eyJ1IjoiaWV2YS1hbGVrc2FuZHJhdmljYSIsImEiOiJja3JxZTJ6MmgwN3NtMnhvMHp3cW4zY2F0In0.mYrJLfgBZnIaGQJzO6x6fg';
  const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      types: 'country,region,place,postcode,locality,neighborhood'
  });

geocoder.addTo('#geocoder');

// Get the geocoder results container.
  const results = document.getElementById('result');

// Add geocoder result to container.
  geocoder.on('result', (e) => {
      let coordinates = JSON.stringify(e.result, null, 2);
      results.innerText = coordinates
  });

// Clear results container when search is cleared.
  geocoder.on('clear', () => {
      results.innerText = '';
  });

