<!DOCTYPE html>
<html>
<head>
  <title>
    Simple Map
  </title>
  <meta content="initial-scale=1.0" name="viewport">
  <meta charset="utf-8">
</head>
<body>
  <div id="MapContainer" style="border-style: solid; height:40em; display: block;">
    <div id="ControlContainer">
      <ul role="tablist">
        <li role="tab" id="onglet-1" aria-controls="panneau-1">Onglet 1</li>
        <li role="tab" id="onglet-2" aria-controls="panneau-2">Onglet 2</li>
      </ul>

      <div role="tabpanel" id="panneau-1">
        <div id="sousPanneau1" class="col-md-4" style="margin-top: 1.5em; min-width: 25em;">
          <form class="form-horizontal" role="form" onsubmit="return false">
            <div class="form-group">
              <label for="address" class="col-md-3 control-label">Adresse</label>
              <div class="col-md-9">
                <input id="address" class="form-control" type="textbox" placeholder="Indiquez un lieu" autocomplete="off"/>
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-offset-3 col-md-4">
                <button type="button" class="btn btn-primary" id="adresseBtn">Obtenir les coordonnées GPS</button>
              </div>
            </div>
          </form>
          <form class="form-horizontal" role="form" onsubmit="return false">
            <h4>Degrés décimaux (DD)*</h4>
            <div class="form-group">
              <label class="col-md-3 control-label" for="latitude">Latitude</label>
              <div class="col-md-9"><input id="latitude" class="form-control" type="number"></div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label" for="longitude">Longitude</label>
              <div class="col-md-9">
                <input id="longitude" class="form-control" type="number">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-offset-3 col-md-4">
                <button type="button" class="btn btn-primary" onclick="markerByBtn()">Obtenir l'adresse</button>
              </div>
            </div>
          </form>
          <form class="form-horizontal" role="form" onsubmit="return false">
            <h4>DMS (degrés, minutes, secondes)*</h4>
            <div class="form-group">
              <label class="col-md-3 control-label" for="latitude">Latitude</label>
              <div class="col-md-9">
                <label class="radio-inline">
                  <input type="radio" name="latnordsud" value="nord" id="nord" checked="">
                  N
                </label>
                <label class="radio-inline"><input type="radio" name="latnordsud" value="sud" id="sud">    
                  S
                </label>
                <input class="form-control sexagesimal" id="latitude_degres" type="textbox">
                <label for="latitude_degres">°</label>
                <input class="form-control sexagesimal" id="latitude_minutes" type="textbox">
                <label for="latitude_minutes">'</label>
                <input class="form-control sexagesimalsec" id="latitude_secondes" type="textbox">
                <label for="latitude_secondes">''</label>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label" for="longitude">Longitude</label>
              <div class="col-md-9">
                <label class="radio-inline">
                  <input type="radio" name="lngestouest" value="est" id="est" checked="">
                  E
                </label>
                <label class="radio-inline"><input type="radio" name="lngestouest" value="ouest" id="ouest">    
                  O
                </label>
                <input class="form-control sexagesimal" id="longitude_degres" type="textbox">
                <label for="longitude_degres">°</label>
                <input class="form-control sexagesimal" id="longitude_minutes" type="textbox">
                <label for="longitude_minutes">'</label>
                <input class="form-control sexagesimalsec" id="longitude_secondes" type="textbox">
                <label for="longitude_secondes">''</label>
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-offset-3 col-md-4">
                <button type="button" class="btn btn-primary" id="ddBtn">Obtenir l'adresse</button>
              </div>
            </div>
          </form>
          <span class="help-block"><small>* Système géodésique WGS 84</small></span>
        </div>
      </div>

      <div role="tabpanel" id="panneau-2" aria-labelledby="onglet-2">
        <div id="sousPanneau2" class="col-md-4" style="margin-top: 1.5em; min-width: 25em;">
          <form class="form-horizontal" role="form" onsubmit="return false">
            <div id='adresseList'>
              <!--Contenir toutes les boite de recherches pour l'itnéraire.-->

            </div>
            <div id='itineraireDirection'>
              <!--Contient les infos de directions-->
            </div>
          </form>
        </div>
      </div>

    </div>
    <div id="map"></div>

    
      {literal}
      <script>
        var map;
        var markers = [];
        var input = document.getElementById('address');
        var inputLng = document.getElementById("longitude");
        var inputLat = document.getElementById("latitude");
        var geocoder;
        var latN = document.getElementById('nord');
        var latS = document.getElementById('sud');
        var latDeg = document.getElementById('latitude_degres');
        var latMin = document.getElementById('latitude_minutes');
        var latSec = document.getElementById('latitude_secondes');
        var lonO = document.getElementById('ouest');
        var lonE = document.getElementById('est');
        var lonDeg = document.getElementById('longitude_degres');
        var lonMin = document.getElementById('longitude_minutes');
        var lonSec = document.getElementById('longitude_secondes');
        var directionsDisplay;
        var directionsService;
        var itineraire=[];

        function initMap() {
            geocoder = new google.maps.Geocoder();
            directionsService = new google.maps.DirectionsService();
            directionsDisplay =  new google.maps.DirectionsRenderer({
              draggable: true,
              map: map,
              panel: document.getElementById('itineraireDirection')
            });
            map = new google.maps.Map(document.getElementById('map'), {
                center: {
                    lat: 48.692054,
                    lng: 6.184416999999939
                },
                zoom: 15
            });
            google.maps.event.addListener(map, 'click', function(event) {
                addMarker(event.latLng, map);
            });

            directionsDisplay.setMap(map);
            // Create the search box and link it to the UI element.
            //var input = document.getElementById('pac-input');
            
            //var externalInput = document.getElementById('address')
            var searchBox = new google.maps.places.SearchBox(input);
            //var externalSearchBox = new google.maps.places.SearchBox(externalInput);
            //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
            var adresseBtn = document.getElementById('adresseBtn');

            var ddBtn = document.getElementById('ddBtn');
            // Bias the SearchBox results towards current map's viewport.
            map.addListener('bounds_changed', function() {
                searchBox.setBounds(map.getBounds());
            });

            searchBox.addListener('places_changed', function() {
                var places = searchBox.getPlaces();

                if (places.length == 0) {
                    return;
                }
                // Clear out the old markers.
                markers.forEach(function(marker) {
                    marker.setMap(null);
                });
                markers = [];

                // For each place, get the icon, name and location.
                var bounds = new google.maps.LatLngBounds();
                places.forEach(function(place) {
                    if (!place.geometry) {
                        console.log("Returned place contains no geometry");
                        return;
                    }
                    // Create a marker for each place.
                    var marker = new google.maps.Marker({
                        map: map,
                        title: place.name,
                        position: place.geometry.location,
                        draggable: true
                    });
                    setValuesLatLng(marker);
                    marker.addListener('drag', handleEvent);
                    marker.addListener('dragend', handleEvent);
                    markers.push(marker);
                    toDMS(parseFloat(place.geometry.location.lat()), parseFloat(place.geometry.location.lng()));

                    if (place.geometry.viewport) {
                        // Only geocodes have viewport.
                        bounds.union(place.geometry.viewport);
                    } else {
                        bounds.extend(place.geometry.location);
                    }
                });
                map.fitBounds(bounds);
            });

            adresseBtn.addEventListener('click', function() {
                markers.forEach(function(marker) {
                    marker.setMap(null);
                });
                markers = [];
                var address = document.getElementById('address').value;
                geocoder.geocode({
                    'address': address
                }, function(results, status) {
                    if (status == 'OK') {
                        map.setCenter(results[0].geometry.location);
                        addMarker(results[0].geometry.location,map)
                        toDMS(parseFloat(results[0].geometry.location.lat()), parseFloat(results[0].geometry.location.lng()));
                        setValuesLatLng(marker);
                    } else {
                        alert('Geocode was not successful for the following reason: ' + status);
                    }
                });
            });

            ddBtn.addEventListener('click',function(){
                toDD(parseFloat(latDeg.value),parseFloat(latMin.value),parseFloat(latSec.value),parseFloat(lonDeg.value),parseFloat(lonMin.value),parseFloat(lonSec.value));
            });
        }

        function addMarker(location, map) {
            clearMarkers();
            var marker = new google.maps.Marker({
                position: location,
                map: map,
                draggable: true
            });
            setValuesLatLng(marker);
            markers.push(marker);
            geocodeLatLng(geocoder,map)
            toDMS(parseFloat(location.lat()), parseFloat(location.lng()));
            marker.addListener('drag', handleEvent);
            marker.addListener('dragend', handleEventEnd);

        }

        function clearMarkers() {
            setMapOnAll(null);
            markers.forEach(function(marker) {
                    marker.setMap(null);
            });
            markers = [];
        }

        function setMapOnAll(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        function handleEventEnd(event) {
            inputLng.value = event.latLng.lng();
            inputLat.value = event.latLng.lat();
            toDMS(parseFloat(event.latLng.lat()), parseFloat(event.latLng.lng()));
            geocodeLatLng(geocoder,map);
        }

        function handleEvent(event) {
            inputLng.value = event.latLng.lng();
            inputLat.value = event.latLng.lat();
            toDMS(parseFloat(event.latLng.lat()), parseFloat(event.latLng.lng()));
        }

        function setValuesLatLng(marker) {
            inputLng.value = marker.position.lng();
            inputLat.value = marker.position.lat();
        }

        function markerByBtn() {
            var nLong = parseFloat(document.getElementById("longitude").value);
            var nLat = parseFloat(document.getElementById("latitude").value);
            var LongLat = new google.maps.LatLng(nLat, nLong);
            clearMarkers();
            addMarker(LongLat, map);
        }

        function toDMS(lat, long) {
            //Lattitude  
            //calcul des valeurs
            var latitudeDeg = Math.trunc(lat);
            var latitudeMin = Math.trunc((latitudeDeg - lat) * 60);
            var latitudeSec = (lat - latitudeDeg - (latitudeMin / 60)) * 3600;
            //Assignation des valeurs
            latDeg.value = latitudeDeg;
            latMin.value = latitudeMin;
            latSec.value = latitudeSec;
            if (lat > 0) {
                latN.checked = true;
                latS.checked = false;
            } else {
                latN.checked = false;
                latS.checked = true;
            }

            //Longitude
            //calcul des valeurs
            var longitudeDeg = Math.trunc(long);
            var longitudeMin = Math.trunc((longitudeDeg - long) * 60);
            var longitudeSec = (long - longitudeDeg - (longitudeMin / 60)) * 3600;
            //Assignation des valeurs
            lonDeg.value = longitudeDeg;
            lonMin.value = longitudeMin;
            lonSec.value = longitudeSec;
            if (long > 0) {
                lonE.checked = true;
                lonO.checked = false;
            } else {
                lonE.checked = false;
                lonO.checked = true;
            }
        }

        function toDD(latD,latM,latS,lonD,lonM,lonS){
          //inputLat.value = ;
          //inputLng.value = ;
          //var geoLat = inputLat.value;
          //var geoLng = inputLng.value;
          var geoLatLng =new google.maps.LatLng(latD+(latM/60)+(latS/3600), lonD+(lonM/60)+(lonS/3600));
          if (latD > 0) {
                latN.checked = true;
                latS.checked = false;
            } else {
                latN.checked = false;
                latS.checked = true;
            }

            if (lonD > 0) {
                lonE.checked = true;
                lonO.checked = false;
            } else {
                lonE.checked = false;
                lonO.checked = true;
            }
            addMarker(geoLatLng,map);
        }

        function geocodeLatLng(geocoder, map) {
          var geoLat = inputLat.value;
          var geoLng = inputLng.value;
          var geoLatLng =new google.maps.LatLng(geoLat, geoLng);
          geocoder.geocode({'location': geoLatLng}, function(results, status) {
            if (status === 'OK') {
              if (results[0]) {
                input.value = results[0].formatted_address;
              } else {
                window.alert('No results found');
              }
            } else {
              input.value = "No Results found";
            }
          });
        }

        function calcRoute() {
          var getEtape = document.querySelectorAll('.addresseValue');
          [].forEach.call(getEtape,function(elem){
            if(elem != ''){
              itineraire.push(elem.value);
            }
          });
          var etape = [];
          for(var i =0; i< getEtape.length;i++){
            if(i !=0 || i != getEtape.length-1){
              etape.push({
                "location": getEtape[i].value
              });
            }
          }
          var start = itineraire[0];
          var end = itineraire[itineraire.length-1];
          if(etape.legnth != 0 ){
            var request = {
              origin: start,
              destination: end,
              waypoints: etape,
              travelMode: 'DRIVING'
            };
          }else{
            var request = {
              origin: start,
              destination: end,
              travelMode: 'DRIVING'
            };
          }
          
          directionsService.route(request, function(result, status) {
            if (status == 'OK') {
              directionsDisplay.setDirections(result);
            }
          });
        }


        function displayRoute(origin, destination, service, display) {
          service.route({
              origin: origin,
              destination: destination,
              waypoints: [{location: 'Adelaide, SA'}, {location: 'Broken Hill, NSW'}],
              travelMode: 'DRIVING',
              avoidTolls: true
          }, function(response, status) {
            if (status === 'OK') {
              display.setDirections(response);
            } else {
              alert('Could not display directions due to: ' + status);
            }
          });
        }
      </script>
      <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrr1xhF6HMYye8EavqpGsGblqOy83Eu0E&callback=initMap&libraries=places"></script>
      {/literal}
      {ia_print_js files='maps/maps'}
      {ia_add_js}
        var x = 0;
        window.addEventListener('load',function(event){
          var divW = $('#MapContainer').width();
          resize();
          var listeAdresse = $("#adresseList");
          listeAdresse.append("<div class='form-group column' draggable='true'><label for='address' class='col-md-2 control-label'>Depart</label><div class='col-md-8'><input id='addressDep' class='form-control addresseValue' type='textbox' placeholder='Indiquez un lieu' autocomplete='off'/></div></div>");

          var inp = document.getElementById('addressDep');
          listeAdresse.append("<div class='form-group column' id='addrFin' draggable='true'><label for='address' class='col-md-2 control-label'>Arrivée</label><div class='col-md-8'><input id='addressFin' class='form-control addresseValue' type='textbox' placeholder='Indiquez un lieu' autocomplete='off'></input></div></div>");

          var inp = document.getElementById('addressFin');

          listeAdresse.append("<button type='button' class='btn btn-primary' style='margin-right:1em;' id='ajouterAddr'>+</button><button type='button' class='btn btn-primary' id='calculerAddr'>Calculer Itinéraire</button>");

          var w = $('#adresseList').width();
          var itinDesc = $("#itineraireDirection"); 
          itinDesc.width($('#MapContainer').width()-$('#map').width()-document.getElementById("ControlContainer").scrollWidth);

          var addAddressBtn = document.getElementById("ajouterAddr");

          addAddressBtn.addEventListener('click',function(){
            ajoutAdresse();
          });

          var itineraireBtn = document.getElementById("calculerAddr");
          itineraireBtn.addEventListener('click',function(){
            resize();
            calcRoute();
          });
          drag();

          addEvntInput();

          resize();

        });
        window.addEventListener('resize',function(event){
          var w = $('#adresseList').width();
          var itinDesc = $("#itineraireDirection");
          itinDesc.width(w);
          var divW = $('#MapContainer').width();

          resize();
        });

        function resize(){

          if($('#MapContainer').width()>992){
            $('#ControlContainer').width("25em");
            $("#map").width($('#MapContainer').width()- $('#ControlContainer').width());
            $('#map').css("margin-top", "0em");
            $('#sousPanneau1').css("margin-top", "1.5em");
            $('#sousPanneau2').css("margin-top", "1.5em");
            $(".removeBtn").css("margin-left", "0em");
            $('#itineraireDirection').width(parseFloat($('#MapContainer').width()-($('#map').width()+getScrollBarSize(document.getElementById("ControlContainer")))));

          }else if($('#MapContainer').width()>710 && $('#MapContainer').width()<=992){
            $('#ControlContainer').width("25em");
            $("#map").width($('#MapContainer').width()- $('#ControlContainer').width());
            $('#map').css("margin-top", "0em");
            $('#sousPanneau1').css("margin-top", "3em");
            $('#sousPanneau2').css("margin-top", "3em");
            $(".removeBtn").css("margin-left", "1em");
            $("col-md-8").css("margin-top", "0px");   
            $('#itineraireDirection').width(parseFloat($('#MapContainer').width()-($('#map').width()+getScrollBarSize(document.getElementById("ControlContainer")))));
            console.log("inf");
          }else{
            $('#map').width($('#MapContainer').width());
            $('#map').css("margin-top", "1em");
            $('#sousPanneau1').css("margin-top", "3em");
            $('#sousPanneau2').css("margin-top", "3em");
            $(".removeBtn").css("margin-left", "1em");
            $("col-md-8").css("margin-top", "0px");  
            $('#ControlContainer').width($('#MapContainer').width());
            $('#itineraireDirection').width(parseFloat($('#ControlContainer').width()));
          } 

        } 

        function isOverflown(element) {
          return element.scrollHeight > element.clientHeight || element.scrollWidth > element.clientWidth;
        }

        function getScrollBarSize(element){
          return element.offsetWidth - element.clientWidth;
        }

        function ajoutAdresse(){
          var derniereAddr = $("#addrFin");
          derniereAddr.before("<div class='form-group column' draggable='true'><label for='address' class='col-md-2 control-label' id=\'label"+x+"'></label><div class='col-md-8'><input id=\'address"+x+"' class='form-control addresseValue' type='textbox' placeholder='Indiquez un lieu' autocomplete='off'/></div><button type='button' class='btn btn-danger removeBtn'>-</button></div>");
          document.getElementById('label'+x).innerHTML="Etape "+x;
          var inp = document.getElementById('address'+x);
          var searchBox = new google.maps.places.SearchBox(inp);
          searchBox.setBounds(map.getBounds());
          drag();
          x= x+1;
          var t = isOverflown(document.getElementById("ControlContainer"));
          if(t == true){
            if($('#MapContainer').width()>630){
              $('#map').width($('#MapContainer').width()-document.getElementById("ControlContainer").scrollWidth);
              console.log("scroll détuite");
            }else{
              console.log("on touche a rien");
            }
          }
          setLabelAdresse();
          addRemBtn();
        }

        function drag(){
          var cols = document.querySelectorAll('#adresseList .column');
          [].forEach.call(cols, addDnDHandlers);
        }

        function addEvntInput(){
          var addrInp = document.getElementsByClassName('addresseValue');
           Array.prototype.forEach.call(addrInp,function(elem){
                var searchBox = new google.maps.places.SearchBox(elem);
                searchBox.setBounds(map.getBounds());
            });
          map.addListener('bounds_changed', function() {
            Array.prototype.forEach.call(addrInp,function(elem){
                var searchBox = new google.maps.places.SearchBox(elem);
                searchBox.setBounds(map.getBounds());
            });
          });
        }

        function addRemBtn(){
          var btn = document.querySelectorAll('#adresseList .removeBtn');
          btn.forEach(function(element) {
            element.addEventListener('click', removeBtnFunc);
          });
        }
      
        // Instanciation des accordéons
        var list = document.querySelector( '[role="tablist"]' );
        var tablist = new window.Tablist( list );

        // Il est aussi possible de passer un objet d'options
        // afin d’exécuter des actions à l’ouverture et à la fermeture
        // des panneaux (animation des panneaux par exemple)
        //var tablist = new window.Tablist( list, {
        //  openTab: myOpenFunc,    // ouverture
        //  closeTab: myCloseFunc   // fermeture
        //});

      {/ia_add_js}

     </div>
  </body>
</html>