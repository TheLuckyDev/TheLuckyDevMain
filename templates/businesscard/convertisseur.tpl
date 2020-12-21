<div class="titreOrderOfmagnitude">Base Unit</div>
<div id="converterBox" style="border-style: solid;"> 
	<div>
		<ul role="tablist" id="multipleValue" >
			<li role="tab" id="onglet-1" aria-controls="panneau-1">Angle</li>
			<li role="tab" id="onglet-3" aria-controls="panneau-3">Distance</li>
			<li role="tab" id="onglet-4" aria-controls="panneau-4">Energie</li>
			<li role="tab" id="onglet-5" aria-controls="panneau-5">Fréquence</li>
			<li role="tab" id="onglet-6" aria-controls="panneau-6">Pression</li>
			<li role="tab" id="onglet-7" aria-controls="panneau-7">Poids</li>
			<li role="tab" id="onglet-8" aria-controls="panneau-8">Superficie</li>
			<li role="tab" id="onglet-9" aria-controls="panneau-9">Température</li>
			<li role="tab" id="onglet-10" aria-controls="panneau-10">Temps</li>
			<li role="tab" id="onglet-11" aria-controls="panneau-11">Vitesse</li>
			<li role="tab" id="onglet-12" aria-controls="panneau-12">Volume</li>
		</ul>
	</div>
<!--display: inline-block;-->
	<div id="converterContainer">
		<div role="tabpanel" id="panneau-1">	
			<div class="col-md-4 panneau-gauche">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio1" name="radio1" onclick="uniteBaseAngle=1;" checked/>
						<label for="radio1">Degree (°)</label>

						<input type="radio" id="radio2" name="radio1" onclick="uniteBaseAngle=2;"/>
						<label for="radio2">Grad[gon] (grad)</label>

						<input type="radio" id="radio3" name="radio1" onclick="uniteBaseAngle=3;"/>
						<label for="radio3">Angular Mil (angular mil)</label>

						<input type="radio" id="radio4" name="radio1" onclick="uniteBaseAngle=4;"/>
						<label for="radio4">Minute of Arc (')</label>

						<input type="radio" id="radio5" name="radio1" onclick="uniteBaseAngle=5;"/>
						<label for="radio5">Radian (rad)</label>

						<input type="radio" id="radio6" name="radio1" onclick="uniteBaseAngle=6;"/>
						<label for="radio6">Second of Arc ('')</label>
					</div>
				</form>
			</div>
			<div class="col-md-4 panneau-central">
				Value to convert : <br>
				<input id="entreeAngle" class="form-control" type="number"/><br>
				Result : <br>
				<input id="resultatAngle" class="form-control" type="number"/>
				<button type="button" class="btn btn-warning" style="float:right" onclick="angleConverter();">Convert</button>
			</div>
			<div class="col-md-4 panneau-droit">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio7" name="radio1" onclick="uniteArriveAngle=1;" checked/>
						<label for="radio7">Degree (°)</label>

						<input type="radio" id="radio8" name="radio1" onclick="uniteArriveAngle=2;"/>
						<label for="radio8">Grad[gon] (grad)</label>

						<input type="radio" id="radio9" name="radio1" onclick="uniteArriveAngle=3;"/>
						<label for="radio9">Angular Mil (angular mil)</label>

						<input type="radio" id="radio10" name="radio1" onclick="uniteArriveAngle=4;"/>
						<label for="radio10">Minute of Arc (')</label>

						<input type="radio" id="radio11" name="radio1" onclick="uniteArriveAngle=5;"/>
						<label for="radio11">Radian (rad)</label>

						<input type="radio" id="radio12" name="radio1" onclick="uniteArriveAngle=6;"/>
						<label for="radio12">Second of Arc ('')</label>
					</div>
				</form>
			</div>
		</div>
		<div role="tabpanel" id="panneau-3" aria-labelledby="onglet-3">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio33" name="radio1"/>
						<label for="radio33">Métre (m)</label>

						<input type="radio" id="radio34" name="radio1"/>
						<label for="radio34">Mille (mi)</label>

						<input type="radio" id="radio35" name="radio1"/>
						<label for="radio35">Inch (in)</label>

						<input type="radio" id="radio36" name="radio1"/>
						<label for="radio36">Foot (ft)</label>

						<input type="radio" id="radio37" name="radio1"/>
						<label for="radio37">Yard (yd)</label>

						<input type="radio" id="radio38" name="radio1"/>
						<label for="radio38">Mille Marin (mille marin)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio39" name="radio1"/>
						<label for="radio39">Métre (m)</label>

						<input type="radio" id="radio40" name="radio1"/>
						<label for="radio40">Mille (mi)</label>

						<input type="radio" id="radio41" name="radio1"/>
						<label for="radio41">Inch (in)</label>

						<input type="radio" id="radio42" name="radio1"/>
						<label for="radio42">Foot (ft)</label>

						<input type="radio" id="radio43" name="radio1"/>
						<label for="radio43">Yard (yd)</label>

						<input type="radio" id="radio44" name="radio1"/>
						<label for="radio44">Mille Marin (mille marin)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-4" aria-labelledby="onglet-4">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio45" name="radio1"/>
						<label for="radio45">Joule (J)</label>

						<input type="radio" id="radio46" name="radio1"/>
						<label for="radio46">Calorie (cal)</label>

						<input type="radio" id="radio47" name="radio1"/>
						<label for="radio47">Watt-hour (Wh)</label>

						<input type="radio" id="radio48" name="radio1"/>
						<label for="radio48">British thermal unit (BTU)</label>

						<input type="radio" id="radio49" name="radio1"/>
						<label for="radio49">Therm americain (thm)</label>

						<input type="radio" id="radio50" name="radio1"/>
						<label for="radio50">Foot-Pound (ft-lb)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio51" name="radio1"/>
						<label for="radio51">Joule (J)</label>

						<input type="radio" id="radio52" name="radio1"/>
						<label for="radio52">Calorie (cal)</label>

						<input type="radio" id="radio53" name="radio1"/>
						<label for="radio53">Watt-hour (Wh)</label>

						<input type="radio" id="radio54" name="radio1"/>
						<label for="radio54">British thermal unit (BTU)</label>

						<input type="radio" id="radio55" name="radio1"/>
						<label for="radio55">Therm americain (thm)</label>

						<input type="radio" id="radio56" name="radio1"/>
						<label for="radio56">Foot-Pound (ft-lb)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-5" aria-labelledby="onglet-5">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio57" name="radio1"/>
						<label for="radio57">Hertz (°)</label>

						<input type="radio" id="radio58" name="radio1"/>
						<label for="radio58">KiloHertz (KH)</label>

						<input type="radio" id="radio59" name="radio1"/>
						<label for="radio59">MegaHertz (MH)</label>

						<input type="radio" id="radio60" name="radio1"/>
						<label for="radio60">GigaHertz (GH)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio61" name="radio1"/>
						<label for="radio61">Hertz (°)</label>

						<input type="radio" id="radio62" name="radio1"/>
						<label for="radio62">KiloHertz (KH)</label>

						<input type="radio" id="radio63" name="radio1"/>
						<label for="radio63">MegaHertz (MH)</label>

						<input type="radio" id="radio64" name="radio1"/>
						<label for="radio64">GigaHertz (GH)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-6" aria-labelledby="onglet-6">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio65" name="radio1"/>
						<label for="radio65">Atmosphere (atm)</label>

						<input type="radio" id="radio66" name="radio1"/>
						<label for="radio66">Bar (bar)</label>

						<input type="radio" id="radio67" name="radio1"/>
						<label for="radio67">Millibar (mbar)</label>

						<input type="radio" id="radio68" name="radio1"/>
						<label for="radio68">Pascal (Pa)</label>

						<input type="radio" id="radio69" name="radio1"/>
						<label for="radio69">Hectopascal (hPa)</label>

						<input type="radio" id="radio70" name="radio1"/>
						<label for="radio70">Pounds per square inch (Psi)</label>

						<input type="radio" id="radio71" name="radio1"/>
						<label for="radio71">Torr (Torr)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio72" name="radio1"/>
						<label for="radio72">Atmosphere (atm)</label>

						<input type="radio" id="radio73" name="radio1"/>
						<label for="radio73">Bar (bar)</label>

						<input type="radio" id="radio74" name="radio1"/>
						<label for="radio74">Millibar (mbar)</label>

						<input type="radio" id="radio75" name="radio1"/>
						<label for="radio75">Pascal (Pa)</label>

						<input type="radio" id="radio76" name="radio1"/>
						<label for="radio76">Hectopascal (hPa)</label>

						<input type="radio" id="radio77" name="radio1"/>
						<label for="radio77">Pounds per square inch (Psi)</label>

						<input type="radio" id="radio78" name="radio1"/>
						<label for="radio78">Torr (Torr)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-7" aria-labelledby="onglet-7">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio79" name="radio1"/>
						<label for="radio79">Tonne (t)</label>

						<input type="radio" id="radio80" name="radio1"/>
						<label for="radio80">Gram (g)</label>

						<input type="radio" id="radio81" name="radio1"/>
						<label for="radio81">Carat (carat)</label>

						<input type="radio" id="radio82" name="radio1"/>
						<label for="radio82">Grain (grain)</label>

						<input type="radio" id="radio83" name="radio1"/>
						<label for="radio83">ounce avoirdupois (oz)</label>

						<input type="radio" id="radio84" name="radio1"/>
						<label for="radio84">pound avoirdupois (lb)</label>

						<input type="radio" id="radio85" name="radio1"/>
						<label for="radio85">long hundredweight (cwt)</label>

						<input type="radio" id="radio86" name="radio1"/>
						<label for="radio86">short hundredweight (cwt)</label>

						<input type="radio" id="radio87" name="radio1"/>
						<label for="radio87">long ton (ton)</label>

						<input type="radio" id="radio88" name="radio1"/>
						<label for="radio88">short ton (ton)</label>

						<input type="radio" id="radio89" name="radio1"/>
						<label for="radio89">stone (st)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio90" name="radio1"/>
						<label for="radio90">Tonne (t)</label>

						<input type="radio" id="radio91" name="radio1"/>
						<label for="radio91">Gram (g)</label>

						<input type="radio" id="radio92" name="radio1"/>
						<label for="radio92">Carat (carat)</label>

						<input type="radio" id="radio93" name="radio1"/>
						<label for="radio93">Grain (grain)</label>

						<input type="radio" id="radio94" name="radio1"/>
						<label for="radio94">ounce avoirdupois (oz)</label>

						<input type="radio" id="radio95" name="radio1"/>
						<label for="radio95">pound avoirdupois (lb)</label>

						<input type="radio" id="radio96" name="radio1"/>
						<label for="radio96">long hundredweight (cwt)</label>

						<input type="radio" id="radio97" name="radio1"/>
						<label for="radio97">short hundredweight (cwt)</label>

						<input type="radio" id="radio98" name="radio1"/>
						<label for="radio98">long ton (ton)</label>

						<input type="radio" id="radio99" name="radio1"/>
						<label for="radio99">short ton (ton)</label>

						<input type="radio" id="radio100" name="radio1"/>
						<label for="radio100">stone (st)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-8" aria-labelledby="onglet-8">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio101" name="radio1"/>
						<label for="radio101">sqare meter (m<sup>2</sup>)</label>

						<input type="radio" id="radio102" name="radio1"/>
						<label for="radio102">hectare (ha)</label>

						<input type="radio" id="radio103" name="radio1"/>
						<label for="radio103">are (a)</label>

						<input type="radio" id="radio104" name="radio1"/>
						<label for="radio104">centiare (ca)</label>

						<input type="radio" id="radio105" name="radio1"/>
						<label for="radio105">Square Mile (mile<sup>2</sup>)</label>

						<input type="radio" id="radio106" name="radio1"/>
						<label for="radio106">Square inch (in<sup>2</sup>)</label>

						<input type="radio" id="radio107" name="radio1"/>
						<label for="radio107">Square yard (yd<sup>2</sup>)</label>

						<input type="radio" id="radio108" name="radio1"/>
						<label for="radio108">Rood (ro)</label>

						<input type="radio" id="radio109" name="radio1"/>
						<label for="radio109">Acre (in<sup>2</sup>)</label>

						<input type="radio" id="radio110" name="radio1"/>
						<label for="radio110">Square nautical mile (nauical mile<sup>2</sup>)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio111" name="radio1"/>
						<label for="radio111">sqare meter (m<sup>2</sup>)</label>

						<input type="radio" id="radio112" name="radio1"/>
						<label for="radio112">hectare (ha)</label>

						<input type="radio" id="radio113" name="radio1"/>
						<label for="radio113">are (a)</label>

						<input type="radio" id="radio114" name="radio1"/>
						<label for="radio114">centiare (ca)</label>

						<input type="radio" id="radio115" name="radio1"/>
						<label for="radio115">Square Mile (mile<sup>2</sup>)</label>

						<input type="radio" id="radio116" name="radio1"/>
						<label for="radio116">Square inch (in<sup>2</sup>)</label>

						<input type="radio" id="radio117" name="radio1"/>
						<label for="radio117">Square yard (yd<sup>2</sup>)</label>

						<input type="radio" id="radio118" name="radio1"/>
						<label for="radio118">Rood (ro)</label>

						<input type="radio" id="radio119" name="radio1"/>
						<label for="radio119">Acre (in<sup>2</sup>)</label>

						<input type="radio" id="radio120" name="radio1"/>
						<label for="radio120">Square nautical mile (nauical mile<sup>2</sup>)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-9" aria-labelledby="onglet-9">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio121" name="radio1"/>
						<label for="radio121">Celcius (°C)</label>

						<input type="radio" id="radio122" name="radio1"/>
						<label for="radio122">Fahrenheit (°F)</label>

						<input type="radio" id="radio123" name="radio1"/>
						<label for="radio123">Kelvin (K)</label>

						<input type="radio" id="radio124" name="radio1"/>
						<label for="radio124">Reaumur(°Ré)</label>

						<input type="radio" id="radio125" name="radio1"/>
						<label for="radio125">Newton (°N)</label>

						<input type="radio" id="radio126" name="radio1"/>
						<label for="radio126">Rankine (°Ra)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio127" name="radio1"/>
						<label for="radio127">Celcius (°C)</label>

						<input type="radio" id="radio128" name="radio1"/>
						<label for="radio128">Fahrenheit (°F)</label>

						<input type="radio" id="radio129" name="radio1"/>
						<label for="radio129">Kelvin (K)</label>

						<input type="radio" id="radio130" name="radio1"/>
						<label for="radio130">Reaumur(°Ré)</label>

						<input type="radio" id="radio131" name="radio1"/>
						<label for="radio131">Newton (°N)</label>

						<input type="radio" id="radio132" name="radio1"/>
						<label for="radio132">Rankine (°Ra)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-10" aria-labelledby="onglet-10">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio133" name="radio1"/>
						<label for="radio133">Year (common)</label>

						<input type="radio" id="radio134" name="radio1"/>
						<label for="radio134">Year (leap)</label>

						<input type="radio" id="radio135" name="radio1"/>
						<label for="radio135">Year (Gregorian)</label>

						<input type="radio" id="radio136" name="radio1"/>
						<label for="radio136">Year (Julian)</label>

						<input type="radio" id="radio137" name="radio1"/>
						<label for="radio137">Year (tropical)</label>

						<input type="radio" id="radio138" name="radio1"/>
						<label for="radio138">Week</label>

						<input type="radio" id="radio139" name="radio1"/>
						<label for="radio139">Day</label>

						<input type="radio" id="radio140" name="radio1"/>
						<label for="radio140">Hour</label>

						<input type="radio" id="radio141" name="radio1"/>
						<label for="radio141">Minute</label>

						<input type="radio" id="radio142" name="radio1"/>
						<label for="radio142">Second</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio143" name="radio1"/>
						<label for="radio143">Year (common)</label>

						<input type="radio" id="radio144" name="radio1"/>
						<label for="radio144">Year (leap)</label>

						<input type="radio" id="radio145" name="radio1"/>
						<label for="radio145">Year (Gregorian)</label>

						<input type="radio" id="radio146" name="radio1"/>
						<label for="radio146">Year (Julian)</label>

						<input type="radio" id="radio147" name="radio1"/>
						<label for="radio147">Year (tropical)</label>

						<input type="radio" id="radio148" name="radio1"/>
						<label for="radio148">Week</label>

						<input type="radio" id="radio149" name="radio1"/>
						<label for="radio149">Day</label>

						<input type="radio" id="radio150" name="radio1"/>
						<label for="radio150">Hour</label>

						<input type="radio" id="radio151" name="radio1"/>
						<label for="radio151">Minute</label>

						<input type="radio" id="radio152" name="radio1"/>
						<label for="radio152">Second</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-11" aria-labelledby="onglet-11">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio153" name="radio1"/>
						<label for="radio153">Kilometer per hour (kmph)</label>

						<input type="radio" id="radio154" name="radio1"/>
						<label for="radio154">Meter per second (mps)</label>

						<input type="radio" id="radio155" name="radio1"/>
						<label for="radio155">Miles per hour (mph)</label>

						<input type="radio" id="radio156" name="radio1"/>
						<label for="radio156">Knot (knot)</label>

						<input type="radio" id="radio157" name="radio1"/>
						<label for="radio157">Mac (ma)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio158" name="radio1"/>
						<label for="radio158">Kilometer per hour (kmph)</label>

						<input type="radio" id="radio159" name="radio1"/>
						<label for="radio159">Meter per second (mps)</label>

						<input type="radio" id="radio160" name="radio1"/>
						<label for="radio160">Miles per hour (mph)</label>

						<input type="radio" id="radio161" name="radio1"/>
						<label for="radio161">Knot (knot)</label>

						<input type="radio" id="radio162" name="radio1"/>
						<label for="radio162">Mac (ma)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneau-12" aria-labelledby="onglet-12">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio163" name="radio1"/>
						<label for="radio163">Cubic meter (m<sup>3</sup>)</label>

						<input type="radio" id="radio164" name="radio1"/>
						<label for="radio164">Liter (L)</label>

						<input type="radio" id="radio165" name="radio1"/>
						<label for="radio165">Fluid ounce [UK] (fl oz)</label>

						<input type="radio" id="radio166" name="radio1"/>
						<label for="radio166">Fluid ounce [US] (fl oz)</label>

						<input type="radio" id="radio167" name="radio1"/>
						<label for="radio167">Cubic feet (ft<sup>3</sup>)</label>

						<input type="radio" id="radio168" name="radio1"/>
						<label for="radio168">Cubic yard (yard<sup>3</sup>)</label>

						<input type="radio" id="radio169" name="radio1"/>
						<label for="radio169">Gallon [UK] (gal)</label>

						<input type="radio" id="radio170" name="radio1"/>
						<label for="radio170">Gallon [US] (gal)</label>

						<input type="radio" id="radio171" name="radio1"/>
						<label for="radio171">Petroleum barrel (bbl)</label>

						<input type="radio" id="radio172" name="radio1"/>
						<label for="radio172">Pint [US] (pt [Imp])</label>

						<input type="radio" id="radio173" name="radio1"/>
						<label for="radio173">Fluid pint [US] (pt [US fl])</label>

						<input type="radio" id="radio174" name="radio1"/>
						<label for="radio174">Dry pint [US] (pt [US Dry])</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio175" name="radio1"/>
						<label for="radio175">Cubic meter (m<sup>3</sup>)</label>

						<input type="radio" id="radio176" name="radio1"/>
						<label for="radio176">Liter (L)</label>

						<input type="radio" id="radio177" name="radio1"/>
						<label for="radio177">Fluid ounce [UK] (fl oz)</label>

						<input type="radio" id="radio178" name="radio1"/>
						<label for="radio178">Fluid ounce [US] (fl oz)</label>

						<input type="radio" id="radio179" name="radio1"/>
						<label for="radio179">Cubic feet (ft<sup>3</sup>)</label>

						<input type="radio" id="radio180" name="radio1"/>
						<label for="radio180">Cubic yard (yard<sup>3</sup>)</label>

						<input type="radio" id="radio181" name="radio1"/>
						<label for="radio181">Gallon [UK] (gal)</label>

						<input type="radio" id="radio182" name="radio1"/>
						<label for="radio182">Gallon [US] (gal)</label>

						<input type="radio" id="radio183" name="radio1"/>
						<label for="radio183">Petroleum barrel (bbl)</label>

						<input type="radio" id="radio184" name="radio1"/>
						<label for="radio184">Pint [US] (pt [Imp])</label>

						<input type="radio" id="radio185" name="radio1"/>
						<label for="radio185">Fluid pint [US] (pt [US fl])</label>

						<input type="radio" id="radio186" name="radio1"/>
						<label for="radio186">Dry pint [US] (pt [US Dry])</label>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</br></br>
<div class="line"></div>
</br></br>

<div class="titreOrderOfmagnitude">Order of Magnitude</div>
<div class="valueInputContainer">
	<input type="" name=""></input>
	<select>
		<option value="yocto">Yocto</option>
		<option value="zepto">Zepto</option>
		<option value="atto">Atto</option>
		<option value="femto">Femto</option>
		<option value="pico">Pico</option>
		<option value="nano">Nano</option>
		<option value="micro">Micro</option>
		<option value="milli">Milli</option>
		<option value="centi">Centi</option>
		<option value="deci">Déci</option>
		<option value=""></option>
		<option value="deca">Déca</option>
		<option value="hecto">Hecto</option>
		<option value="mega">Méga</option>
		<option value="giga">Giga</option>
		<option value="tera">Téra</option>
		<option value="peta">Péta</option>
		<option value="exa">Exa</option>
		<option value="zetta">Zetta</option>
		<option value="yotta">Yotta</option>								
	</select>
	TO
	<select>
		<option value="yocto">Yocto</option>
		<option value="zepto">Zepto</option>
		<option value="atto">Atto</option>
		<option value="femto">Femto</option>
		<option value="pico">Pico</option>
		<option value="nano">Nano</option>
		<option value="micro">Micro</option>
		<option value="milli">Milli</option>
		<option value="centi">Centi</option>
		<option value="deci">Déci</option>
		<option value=""></option>
		<option value="deca">Déca</option>
		<option value="hecto">Hecto</option>
		<option value="mega">Méga</option>
		<option value="giga">Giga</option>
		<option value="tera">Téra</option>
		<option value="peta">Péta</option>
		<option value="exa">Exa</option>
		<option value="zetta">Zetta</option>
		<option value="yotta">Yotta</option>
	</select>
	<button>Submit</button>
</div>
<div style="overflow-x: auto" id = "tableauContainer">
	<table class="convertTable" id="tableau">
		<thead>
			<tr>
				<th class="0Nom">Yocto</th>
				<th class="1Nom"></th>
				<th class="2Nom"></th>
				<th class="3Nom">Zepto</th>
				<th class="4Nom"></th>
				<th class="5Nom"></th>
				<th class="6Nom">Atto</th>
				<th class="7Nom"></th>
				<th class="8Nom"></th>
				<th class="9Nom">Femto</th>
				<th class="10Nom"></th>
				<th class="11Nom"></th>
				<th class="12Nom">Pico</th>
				<th class="13Nom"></th>
				<th class="14Nom"></th>
				<th class="15Nom">Nano</th>
				<th class="16Nom"></th>
				<th class="17Nom"></th>
				<th class="18Nom">Micro</th>
				<th class="19Nom"></th>
				<th class="20Nom"></th>
				<th class="21Nom" style="border-left: 2px solid black">Milli</th>
				<th class="22Nom">Centi</th>
				<th class="23Nom">Déci</th>
				<th class="24Nom"></th>
				<th class="25Nom">Déca</th>
				<th class="26Nom">Hecto</th>
				<th class="27Nom" style="border-right: 2px solid black">Kilo</th>
				<th class="28Nom"></th>
				<th class="29Nom"></th>
				<th class="30Nom">Méga</th>				
				<th class="31Nom"></th>
				<th class="32Nom"></th>
				<th class="33Nom">Giga</th>
				<th class="34Nom"></th>
				<th class="35Nom"></th>
				<th class="36Nom">Téra</th>
				<th class="37Nom"></th>
				<th class="38Nom"></th>
				<th class="39Nom">Péta</th>
				<th class="40Nom"></th>
				<th class="41Nom"></th>
				<th class="42Nom">Exa</th>				
				<th class="43Nom"></th>
				<th class="44Nom"></th>
				<th class="45Nom">Zetta</th>
				<th class="46Nom"></th>
				<th class="47Nom"></th>
				<th class="48Nom">Yotta</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th class="0Nom">10<sup>-24</sup></th>
				<th class="1Nom">10<sup>-23</sup></th>
				<th class="2Nom">10<sup>-22</sup></th>
				<th class="3Nom">10<sup>-21</sup></th>
				<th class="4Nom">10<sup>-20</sup></th>
				<th class="5Nom">10<sup>-19</sup></th>
				<th class="6Nom">10<sup>-18</sup></th>
				<th class="7Nom">10<sup>-17</sup></th>
				<th class="8Nom">10<sup>-16</sup></th>
				<th class="9Nom">10<sup>-15</sup></th>
				<th class="10Nom">10<sup>-14</sup></th>
				<th class="11Nom">10<sup>-13</sup></th>
				<th class="12Nom">10<sup>-12</sup></th>
				<th class="13Nom">10<sup>-11</sup></th>
				<th class="14Nom">10<sup>-10</sup></th>
				<th class="15Nom">10<sup>-9</sup></th>
				<th class="16Nom">10<sup>-8</sup></th>
				<th class="17Nom">10<sup>-7</sup></th>
				<th class="18Nom">10<sup>-6</sup></th>
				<th class="19Nom">10<sup>-5</sup></th>
				<th class="20Nom">10<sup>-4</sup></th>
				<th class="21Nom" style="border-left: 2px solid black">10<sup>-3</sup></th>
				<th class="22Nom">10<sup>-2</sup></th>
				<th class="23Nom">10<sup>-1</sup></th>
				<th class="24Nom">10<sup>0</sup></th>
				<th class="25Nom">10<sup>1</sup></th>
				<th class="26Nom">10<sup>2</sup></th>
				<th class="27Nom" style="border-right: 2px solid black">10<sup>3</sup></th>
				<th class="28Nom">10<sup>4</sup></th>
				<th class="29Nom">10<sup>5</sup></th>
				<th class="30Nom">10<sup>6</sup></th>
				<th class="31Nom">10<sup>7</sup></th>
				<th class="32Nom">10<sup>8</sup></th>
				<th class="33Nom">10<sup>9</sup></th>
				<th class="34Nom">10<sup>10</sup></th>
				<th class="35Nom">10<sup>11</sup></th>
				<th class="36Nom">10<sup>12</sup></th>
				<th class="37Nom">10<sup>13</sup></th>
				<th class="38Nom">10<sup>14</sup></th>
				<th class="39Nom">10<sup>15</sup></th>
				<th class="40Nom">10<sup>16</sup></th>
				<th class="41Nom">10<sup>17</sup></th>
				<th class="42Nom">10<sup>18</sup></th>
				<th class="43Nom">10<sup>19</sup></th>
				<th class="44Nom">10<sup>20</sup></th>
				<th class="45Nom">10<sup>21</sup></th>
				<th class="46Nom">10<sup>22</sup></th>
				<th class="47Nom">10<sup>23</sup></th>
				<th class="48Nom">10<sup>24</sup></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="border-left: 2px solid black"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="border-right: 2px solid black"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr class="caseModifiable">
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td style="border-left: 2px solid black">
					<input type="number"></input>
				</td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td style="border-right: 2px solid black">
					<input type="number"></input>
				</td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>				
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
				<td><input type="number"></input></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="border-left: 2px solid black"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="border-right: 2px solid black"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>

</br></br>
<div class="line"></div>
</br></br>

<div class="titreOrderOfmagnitude">Advanced Unit</div>
<div id="converterBoxAdv" style="border-style: solid;"> 
	<div>
		<ul role="tablistAdv" id="multipleValueAdv" >
			<li role="tab" id="ongletAdv-1" aria-controls="panneauAdv-1">Angle</li>
			<li role="tab" id="ongletAdv-2" aria-controls="panneauAdv-2">DataByte</li>
			<li role="tab" id="ongletAdv-3" aria-controls="panneauAdv-3">Distance</li>
			<li role="tab" id="ongletAdv-4" aria-controls="panneauAdv-4">Energie</li>
			<li role="tab" id="ongletAdv-5" aria-controls="panneauAdv-5">Fréquence</li>
			<li role="tab" id="ongletAdv-6" aria-controls="panneauAdv-6">Pression</li>
			<li role="tab" id="ongletAdv-7" aria-controls="panneauAdv-7">Poids</li>
			<li role="tab" id="ongletAdv-8" aria-controls="panneauAdv-8">Superficie</li>
			<li role="tab" id="ongletAdv-9" aria-controls="panneauAdv-9">Température</li>
			<li role="tab" id="ongletAdv-10" aria-controls="panneauAdv-10">Temps</li>
			<li role="tab" id="ongletAdv-11" aria-controls="panneauAdv-11">Vitesse</li>
			<li role="tab" id="ongletAdv-12" aria-controls="panneauAdv-12">Volume</li>
		</ul>
	</div>
	<div id="converterContainerAdv">
		<div role="tabpanel" id="panneauAdv-1" aria-labelledby="ongletAdv-1">	
			<div class="col-md-4 panneau-gauche">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio1" name="radio1" onclick="uniteBaseAngle=1;" checked/>
						<label for="radio1">Degree (°)</label>

						<input type="radio" id="radio2" name="radio1" onclick="uniteBaseAngle=2;"/>
						<label for="radio2">Grad[gon] (grad)</label>

						<input type="radio" id="radio3" name="radio1" onclick="uniteBaseAngle=3;"/>
						<label for="radio3">Angular Mil (angular mil)</label>

						<input type="radio" id="radio4" name="radio1" onclick="uniteBaseAngle=4;"/>
						<label for="radio4">Minute of Arc (')</label>

						<input type="radio" id="radio5" name="radio1" onclick="uniteBaseAngle=5;"/>
						<label for="radio5">Radian (rad)</label>

						<input type="radio" id="radio6" name="radio1" onclick="uniteBaseAngle=6;"/>
						<label for="radio6">Second of Arc ('')</label>
					</div>
				</form>
			</div>
			<div class="col-md-4 panneau-central">
				Value to convert : <br>
				<input id="entreeAngle" class="form-control" type="number"/><br>
				Result : <br>
				<input id="resultatAngle" class="form-control" type="number"/>
				<button type="button" class="btn btn-warning" style="float:right" onclick="angleConverter();">Convert</button>
			</div>
			<div class="col-md-4 panneau-droit">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio7" name="radio1" onclick="uniteArriveAngle=1;" checked/>
						<label for="radio7">Degree (°)</label>

						<input type="radio" id="radio8" name="radio1" onclick="uniteArriveAngle=2;"/>
						<label for="radio8">Grad[gon] (grad)</label>

						<input type="radio" id="radio9" name="radio1" onclick="uniteArriveAngle=3;"/>
						<label for="radio9">Angular Mil (angular mil)</label>

						<input type="radio" id="radio10" name="radio1" onclick="uniteArriveAngle=4;"/>
						<label for="radio10">Minute of Arc (')</label>

						<input type="radio" id="radio11" name="radio1" onclick="uniteArriveAngle=5;"/>
						<label for="radio11">Radian (rad)</label>

						<input type="radio" id="radio12" name="radio1" onclick="uniteArriveAngle=6;"/>
						<label for="radio12">Second of Arc ('')</label>
					</div>
				</form>
			</div>
		</div>
		<div role="tabpanel" id="panneauAdv-2" aria-labelledby="ongletAdv-2">
			<div class="col-md-4 panneau-gauche" >
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio13" name="radio1" onclick="uniteBaseDataByte=1"/>
						<label for="radio13">Bit (b)</label>

						<input type="radio" id="radio14" name="radio1" onclick="uniteBaseDataByte=2"/>
						<label for="radio14">Byte (B)</label>

						<input type="radio" id="radio15" name="radio1" onclick="uniteBaseDataByte=3"/>
						<label for="radio15">Octet (O)</label>

						<input type="radio" id="radio16" name="radio1" onclick="uniteBaseDataByte=3"/>
						<label for="radio15">Decimal</label>
					</div>
				</form>
			</div>
			<div class="col-md-4 panneau-central">
				Value to convert : <br>
				<input id="entreeDataByte" class="form-control" type="number"/><br>
				Result : <br>
				<input id="resultatDataByte" class="form-control" type="number"/>
				<button type="button" class="btn btn-warning" style="float:right" onclick="">Convert</button>
			</div>
			<div class="col-md-4 panneau-droit">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio23" name="radio1" onclick="uniteArriveDataByte=1"/>
						<label for="radio23">Bit (b)</label>

						<input type="radio" id="radio24" name="radio1" onclick="uniteArriveDataByte=2"/>
						<label for="radio24">Byte (B)</label>

						<input type="radio" id="radio25" name="radio1" onclick="uniteArriveDataByte=3"/>
						<label for="radio25">Octet (O)</label>

						<input type="radio" id="radio26" name="radio1" onclick="uniteArriveDataByte=3"/>
						<label for="radio25">Decimal</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-3" aria-labelledby="ongletAdv-3">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio33" name="radio1"/>
						<label for="radio33">Métre (m)</label>

						<input type="radio" id="radio34" name="radio1"/>
						<label for="radio34">Mille (mi)</label>

						<input type="radio" id="radio35" name="radio1"/>
						<label for="radio35">Inch (in)</label>

						<input type="radio" id="radio36" name="radio1"/>
						<label for="radio36">Foot (ft)</label>

						<input type="radio" id="radio37" name="radio1"/>
						<label for="radio37">Yard (yd)</label>

						<input type="radio" id="radio38" name="radio1"/>
						<label for="radio38">Mille Marin (mille marin)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio39" name="radio1"/>
						<label for="radio39">Métre (m)</label>

						<input type="radio" id="radio40" name="radio1"/>
						<label for="radio40">Mille (mi)</label>

						<input type="radio" id="radio41" name="radio1"/>
						<label for="radio41">Inch (in)</label>

						<input type="radio" id="radio42" name="radio1"/>
						<label for="radio42">Foot (ft)</label>

						<input type="radio" id="radio43" name="radio1"/>
						<label for="radio43">Yard (yd)</label>

						<input type="radio" id="radio44" name="radio1"/>
						<label for="radio44">Mille Marin (mille marin)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-4" aria-labelledby="ongletAdv-4">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio45" name="radio1"/>
						<label for="radio45">Joule (J)</label>

						<input type="radio" id="radio46" name="radio1"/>
						<label for="radio46">Calorie (cal)</label>

						<input type="radio" id="radio47" name="radio1"/>
						<label for="radio47">Watt-hour (Wh)</label>

						<input type="radio" id="radio48" name="radio1"/>
						<label for="radio48">British thermal unit (BTU)</label>

						<input type="radio" id="radio49" name="radio1"/>
						<label for="radio49">Therm americain (thm)</label>

						<input type="radio" id="radio50" name="radio1"/>
						<label for="radio50">Foot-Pound (ft-lb)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio51" name="radio1"/>
						<label for="radio51">Joule (J)</label>

						<input type="radio" id="radio52" name="radio1"/>
						<label for="radio52">Calorie (cal)</label>

						<input type="radio" id="radio53" name="radio1"/>
						<label for="radio53">Watt-hour (Wh)</label>

						<input type="radio" id="radio54" name="radio1"/>
						<label for="radio54">British thermal unit (BTU)</label>

						<input type="radio" id="radio55" name="radio1"/>
						<label for="radio55">Therm americain (thm)</label>

						<input type="radio" id="radio56" name="radio1"/>
						<label for="radio56">Foot-Pound (ft-lb)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-5" aria-labelledby="ongletAdv-5">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio57" name="radio1"/>
						<label for="radio57">Hertz (°)</label>

						<input type="radio" id="radio58" name="radio1"/>
						<label for="radio58">KiloHertz (KH)</label>

						<input type="radio" id="radio59" name="radio1"/>
						<label for="radio59">MegaHertz (MH)</label>

						<input type="radio" id="radio60" name="radio1"/>
						<label for="radio60">GigaHertz (GH)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio61" name="radio1"/>
						<label for="radio61">Hertz (°)</label>

						<input type="radio" id="radio62" name="radio1"/>
						<label for="radio62">KiloHertz (KH)</label>

						<input type="radio" id="radio63" name="radio1"/>
						<label for="radio63">MegaHertz (MH)</label>

						<input type="radio" id="radio64" name="radio1"/>
						<label for="radio64">GigaHertz (GH)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-6" aria-labelledby="ongletAdv-6">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio65" name="radio1"/>
						<label for="radio65">Atmosphere (atm)</label>

						<input type="radio" id="radio66" name="radio1"/>
						<label for="radio66">Bar (bar)</label>

						<input type="radio" id="radio67" name="radio1"/>
						<label for="radio67">Millibar (mbar)</label>

						<input type="radio" id="radio68" name="radio1"/>
						<label for="radio68">Pascal (Pa)</label>

						<input type="radio" id="radio69" name="radio1"/>
						<label for="radio69">Hectopascal (hPa)</label>

						<input type="radio" id="radio70" name="radio1"/>
						<label for="radio70">Pounds per square inch (Psi)</label>

						<input type="radio" id="radio71" name="radio1"/>
						<label for="radio71">Torr (Torr)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio72" name="radio1"/>
						<label for="radio72">Atmosphere (atm)</label>

						<input type="radio" id="radio73" name="radio1"/>
						<label for="radio73">Bar (bar)</label>

						<input type="radio" id="radio74" name="radio1"/>
						<label for="radio74">Millibar (mbar)</label>

						<input type="radio" id="radio75" name="radio1"/>
						<label for="radio75">Pascal (Pa)</label>

						<input type="radio" id="radio76" name="radio1"/>
						<label for="radio76">Hectopascal (hPa)</label>

						<input type="radio" id="radio77" name="radio1"/>
						<label for="radio77">Pounds per square inch (Psi)</label>

						<input type="radio" id="radio78" name="radio1"/>
						<label for="radio78">Torr (Torr)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-7" aria-labelledby="ongletAdv-7">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio79" name="radio1"/>
						<label for="radio79">Tonne (t)</label>

						<input type="radio" id="radio80" name="radio1"/>
						<label for="radio80">Gram (g)</label>

						<input type="radio" id="radio81" name="radio1"/>
						<label for="radio81">Carat (carat)</label>

						<input type="radio" id="radio82" name="radio1"/>
						<label for="radio82">Grain (grain)</label>

						<input type="radio" id="radio83" name="radio1"/>
						<label for="radio83">ounce avoirdupois (oz)</label>

						<input type="radio" id="radio84" name="radio1"/>
						<label for="radio84">pound avoirdupois (lb)</label>

						<input type="radio" id="radio85" name="radio1"/>
						<label for="radio85">long hundredweight (cwt)</label>

						<input type="radio" id="radio86" name="radio1"/>
						<label for="radio86">short hundredweight (cwt)</label>

						<input type="radio" id="radio87" name="radio1"/>
						<label for="radio87">long ton (ton)</label>

						<input type="radio" id="radio88" name="radio1"/>
						<label for="radio88">short ton (ton)</label>

						<input type="radio" id="radio89" name="radio1"/>
						<label for="radio89">stone (st)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio90" name="radio1"/>
						<label for="radio90">Tonne (t)</label>

						<input type="radio" id="radio91" name="radio1"/>
						<label for="radio91">Gram (g)</label>

						<input type="radio" id="radio92" name="radio1"/>
						<label for="radio92">Carat (carat)</label>

						<input type="radio" id="radio93" name="radio1"/>
						<label for="radio93">Grain (grain)</label>

						<input type="radio" id="radio94" name="radio1"/>
						<label for="radio94">ounce avoirdupois (oz)</label>

						<input type="radio" id="radio95" name="radio1"/>
						<label for="radio95">pound avoirdupois (lb)</label>

						<input type="radio" id="radio96" name="radio1"/>
						<label for="radio96">long hundredweight (cwt)</label>

						<input type="radio" id="radio97" name="radio1"/>
						<label for="radio97">short hundredweight (cwt)</label>

						<input type="radio" id="radio98" name="radio1"/>
						<label for="radio98">long ton (ton)</label>

						<input type="radio" id="radio99" name="radio1"/>
						<label for="radio99">short ton (ton)</label>

						<input type="radio" id="radio100" name="radio1"/>
						<label for="radio100">stone (st)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-8" aria-labelledby="ongletAdv-8">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio101" name="radio1"/>
						<label for="radio101">sqare meter (m<sup>2</sup>)</label>

						<input type="radio" id="radio102" name="radio1"/>
						<label for="radio102">hectare (ha)</label>

						<input type="radio" id="radio103" name="radio1"/>
						<label for="radio103">are (a)</label>

						<input type="radio" id="radio104" name="radio1"/>
						<label for="radio104">centiare (ca)</label>

						<input type="radio" id="radio105" name="radio1"/>
						<label for="radio105">Square Mile (mile<sup>2</sup>)</label>

						<input type="radio" id="radio106" name="radio1"/>
						<label for="radio106">Square inch (in<sup>2</sup>)</label>

						<input type="radio" id="radio107" name="radio1"/>
						<label for="radio107">Square yard (yd<sup>2</sup>)</label>

						<input type="radio" id="radio108" name="radio1"/>
						<label for="radio108">Rood (ro)</label>

						<input type="radio" id="radio109" name="radio1"/>
						<label for="radio109">Acre (in<sup>2</sup>)</label>

						<input type="radio" id="radio110" name="radio1"/>
						<label for="radio110">Square nautical mile (nauical mile<sup>2</sup>)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio111" name="radio1"/>
						<label for="radio111">sqare meter (m<sup>2</sup>)</label>

						<input type="radio" id="radio112" name="radio1"/>
						<label for="radio112">hectare (ha)</label>

						<input type="radio" id="radio113" name="radio1"/>
						<label for="radio113">are (a)</label>

						<input type="radio" id="radio114" name="radio1"/>
						<label for="radio114">centiare (ca)</label>

						<input type="radio" id="radio115" name="radio1"/>
						<label for="radio115">Square Mile (mile<sup>2</sup>)</label>

						<input type="radio" id="radio116" name="radio1"/>
						<label for="radio116">Square inch (in<sup>2</sup>)</label>

						<input type="radio" id="radio117" name="radio1"/>
						<label for="radio117">Square yard (yd<sup>2</sup>)</label>

						<input type="radio" id="radio118" name="radio1"/>
						<label for="radio118">Rood (ro)</label>

						<input type="radio" id="radio119" name="radio1"/>
						<label for="radio119">Acre (in<sup>2</sup>)</label>

						<input type="radio" id="radio120" name="radio1"/>
						<label for="radio120">Square nautical mile (nauical mile<sup>2</sup>)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-9" aria-labelledby="ongletAdv-9">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio121" name="radio1"/>
						<label for="radio121">Celcius (°C)</label>

						<input type="radio" id="radio122" name="radio1"/>
						<label for="radio122">Fahrenheit (°F)</label>

						<input type="radio" id="radio123" name="radio1"/>
						<label for="radio123">Kelvin (K)</label>

						<input type="radio" id="radio124" name="radio1"/>
						<label for="radio124">Reaumur(°Ré)</label>

						<input type="radio" id="radio125" name="radio1"/>
						<label for="radio125">Newton (°N)</label>

						<input type="radio" id="radio126" name="radio1"/>
						<label for="radio126">Rankine (°Ra)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio127" name="radio1"/>
						<label for="radio127">Celcius (°C)</label>

						<input type="radio" id="radio128" name="radio1"/>
						<label for="radio128">Fahrenheit (°F)</label>

						<input type="radio" id="radio129" name="radio1"/>
						<label for="radio129">Kelvin (K)</label>

						<input type="radio" id="radio130" name="radio1"/>
						<label for="radio130">Reaumur(°Ré)</label>

						<input type="radio" id="radio131" name="radio1"/>
						<label for="radio131">Newton (°N)</label>

						<input type="radio" id="radio132" name="radio1"/>
						<label for="radio132">Rankine (°Ra)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-10" aria-labelledby="ongletAdv-10">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio133" name="radio1"/>
						<label for="radio133">Year (common)</label>

						<input type="radio" id="radio134" name="radio1"/>
						<label for="radio134">Year (leap)</label>

						<input type="radio" id="radio135" name="radio1"/>
						<label for="radio135">Year (Gregorian)</label>

						<input type="radio" id="radio136" name="radio1"/>
						<label for="radio136">Year (Julian)</label>

						<input type="radio" id="radio137" name="radio1"/>
						<label for="radio137">Year (tropical)</label>

						<input type="radio" id="radio138" name="radio1"/>
						<label for="radio138">Week</label>

						<input type="radio" id="radio139" name="radio1"/>
						<label for="radio139">Day</label>

						<input type="radio" id="radio140" name="radio1"/>
						<label for="radio140">Hour</label>

						<input type="radio" id="radio141" name="radio1"/>
						<label for="radio141">Minute</label>

						<input type="radio" id="radio142" name="radio1"/>
						<label for="radio142">Second</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio143" name="radio1"/>
						<label for="radio143">Year (common)</label>

						<input type="radio" id="radio144" name="radio1"/>
						<label for="radio144">Year (leap)</label>

						<input type="radio" id="radio145" name="radio1"/>
						<label for="radio145">Year (Gregorian)</label>

						<input type="radio" id="radio146" name="radio1"/>
						<label for="radio146">Year (Julian)</label>

						<input type="radio" id="radio147" name="radio1"/>
						<label for="radio147">Year (tropical)</label>

						<input type="radio" id="radio148" name="radio1"/>
						<label for="radio148">Week</label>

						<input type="radio" id="radio149" name="radio1"/>
						<label for="radio149">Day</label>

						<input type="radio" id="radio150" name="radio1"/>
						<label for="radio150">Hour</label>

						<input type="radio" id="radio151" name="radio1"/>
						<label for="radio151">Minute</label>

						<input type="radio" id="radio152" name="radio1"/>
						<label for="radio152">Second</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-11" aria-labelledby="ongletAdv-11">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio153" name="radio1"/>
						<label for="radio153">Kilometer per hour (kmph)</label>

						<input type="radio" id="radio154" name="radio1"/>
						<label for="radio154">Meter per second (mps)</label>

						<input type="radio" id="radio155" name="radio1"/>
						<label for="radio155">Miles per hour (mph)</label>

						<input type="radio" id="radio156" name="radio1"/>
						<label for="radio156">Knot (knot)</label>

						<input type="radio" id="radio157" name="radio1"/>
						<label for="radio157">Mac (ma)</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio158" name="radio1"/>
						<label for="radio158">Kilometer per hour (kmph)</label>

						<input type="radio" id="radio159" name="radio1"/>
						<label for="radio159">Meter per second (mps)</label>

						<input type="radio" id="radio160" name="radio1"/>
						<label for="radio160">Miles per hour (mph)</label>

						<input type="radio" id="radio161" name="radio1"/>
						<label for="radio161">Knot (knot)</label>

						<input type="radio" id="radio162" name="radio1"/>
						<label for="radio162">Mac (ma)</label>
					</div>
				</form>
			</div>
		</div>

		<div role="tabpanel" id="panneauAdv-12" aria-labelledby="ongletAdv-12">
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio163" name="radio1"/>
						<label for="radio163">Cubic meter (m<sup>3</sup>)</label>

						<input type="radio" id="radio164" name="radio1"/>
						<label for="radio164">Liter (L)</label>

						<input type="radio" id="radio165" name="radio1"/>
						<label for="radio165">Fluid ounce [UK] (fl oz)</label>

						<input type="radio" id="radio166" name="radio1"/>
						<label for="radio166">Fluid ounce [US] (fl oz)</label>

						<input type="radio" id="radio167" name="radio1"/>
						<label for="radio167">Cubic feet (ft<sup>3</sup>)</label>

						<input type="radio" id="radio168" name="radio1"/>
						<label for="radio168">Cubic yard (yard<sup>3</sup>)</label>

						<input type="radio" id="radio169" name="radio1"/>
						<label for="radio169">Gallon [UK] (gal)</label>

						<input type="radio" id="radio170" name="radio1"/>
						<label for="radio170">Gallon [US] (gal)</label>

						<input type="radio" id="radio171" name="radio1"/>
						<label for="radio171">Petroleum barrel (bbl)</label>

						<input type="radio" id="radio172" name="radio1"/>
						<label for="radio172">Pint [US] (pt [Imp])</label>

						<input type="radio" id="radio173" name="radio1"/>
						<label for="radio173">Fluid pint [US] (pt [US fl])</label>

						<input type="radio" id="radio174" name="radio1"/>
						<label for="radio174">Dry pint [US] (pt [US Dry])</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				Value to convert : <br>
				<input class="form-control" type="number"/><br>
				Result : <br>
				<input class="form-control" type="number"/>
			</div>
			<div class="col-md-4">
				<form action="">
					<div class="converterUnitSelector">
						<input type="radio" id="radio175" name="radio1"/>
						<label for="radio175">Cubic meter (m<sup>3</sup>)</label>

						<input type="radio" id="radio176" name="radio1"/>
						<label for="radio176">Liter (L)</label>

						<input type="radio" id="radio177" name="radio1"/>
						<label for="radio177">Fluid ounce [UK] (fl oz)</label>

						<input type="radio" id="radio178" name="radio1"/>
						<label for="radio178">Fluid ounce [US] (fl oz)</label>

						<input type="radio" id="radio179" name="radio1"/>
						<label for="radio179">Cubic feet (ft<sup>3</sup>)</label>

						<input type="radio" id="radio180" name="radio1"/>
						<label for="radio180">Cubic yard (yard<sup>3</sup>)</label>

						<input type="radio" id="radio181" name="radio1"/>
						<label for="radio181">Gallon [UK] (gal)</label>

						<input type="radio" id="radio182" name="radio1"/>
						<label for="radio182">Gallon [US] (gal)</label>

						<input type="radio" id="radio183" name="radio1"/>
						<label for="radio183">Petroleum barrel (bbl)</label>

						<input type="radio" id="radio184" name="radio1"/>
						<label for="radio184">Pint [US] (pt [Imp])</label>

						<input type="radio" id="radio185" name="radio1"/>
						<label for="radio185">Fluid pint [US] (pt [US fl])</label>

						<input type="radio" id="radio186" name="radio1"/>
						<label for="radio186">Dry pint [US] (pt [US Dry])</label>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

{ia_print_js files='converter/converter'}
{ia_print_js files='converter/lib/lodash'}
{ia_print_js files='converter/lib/index'}
{ia_add_js}
 var tr = [];
 var t =[];
 var uniteBaseAngle=1;
 var uniteArriveAngle=1;
 var uniteBaseDatByte=1;
 var uniteArriveDatByte=1;

 $(document).ready(function(){  
     	var outerContent = $('#tableauContainer');
        var innerContent = $('#tableau');
        outerContent.scrollLeft( (innerContent.width() - outerContent.width()) / 2);
        if($("#converterContainer").width()>991){
   			$("#panneau-1").css("padding-top","5%");
   			$("#panneau-2").css("padding-top","5%");
   			$("#panneau-3").css("padding-top","5%");
   			$("#panneau-4").css("padding-top","5%");
   			$("#panneau-5").css("padding-top","5%");
   			$("#panneau-6").css("padding-top","5%");
   			$("#panneau-7").css("padding-top","5%");
   			$("#panneau-8").css("padding-top","5%");
   			$("#panneau-9").css("padding-top","5%");
   			$("#panneau-10").css("padding-top","5%");
   			$("#panneau-11").css("padding-top","5%");
   			$("#panneau-12").css("padding-top","5%");
   			$(".panneau-gauche").css("margin-top","");
   			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainer").width()>=469 && $("#converterContainer").width()<=991){
			$("#panneau-1").css("padding-top","10%");
			$("#panneau-2").css("padding-top","10%");
			$("#panneau-3").css("padding-top","10%");
			$("#panneau-4").css("padding-top","10%");
			$("#panneau-5").css("padding-top","10%");
			$("#panneau-6").css("padding-top","10%");
			$("#panneau-7").css("padding-top","10%");
			$("#panneau-8").css("padding-top","10%");
			$("#panneau-9").css("padding-top","10%");
			$("#panneau-10").css("padding-top","10%");
			$("#panneau-11").css("padding-top","10%");
			$("#panneau-12").css("padding-top","10%");
			$(".panneau-gauche").css("margin-top","");
			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainer").width()>=410 && $("#converterContainer").width()<=468){
			$("#panneau-1").css("padding-top","25%");
			$("#panneau-2").css("padding-top","25%");
			$("#panneau-3").css("padding-top","25%");
			$("#panneau-4").css("padding-top","25%");
			$("#panneau-5").css("padding-top","25%");
			$("#panneau-6").css("padding-top","25%");
			$("#panneau-7").css("padding-top","25%");
			$("#panneau-8").css("padding-top","25%");
			$("#panneau-9").css("padding-top","25%");
			$("#panneau-10").css("padding-top","25%");
			$("#panneau-11").css("padding-top","25%");
			$("#panneau-12").css("padding-top","25%");
			$(".panneau-gauche").css("margin-top","10%");
			$(".panneau-droit").css("margin-top","15%");
		}else{
			$("#panneau-1").css("padding-top","30%");
			$("#panneau-2").css("padding-top","30%");
			$("#panneau-3").css("padding-top","30%");
			$("#panneau-4").css("padding-top","30%");
			$("#panneau-5").css("padding-top","30%");
			$("#panneau-6").css("padding-top","30%");
			$("#panneau-7").css("padding-top","30%");
			$("#panneau-8").css("padding-top","30%");
			$("#panneau-9").css("padding-top","30%");
			$("#panneau-10").css("padding-top","30%");
			$("#panneau-11").css("padding-top","30%");
			$("#panneau-12").css("padding-top","30%");
			$(".panneau-gauche").css("margin-top","15%");
			$(".panneau-droit").css("margin-top","20%");
		}
		if($("#converterBox").width()>=920){
			$("#converterBox").css("height", "40em");
		}else{
			$("#converterBox").css("height", "");
		}
		if($("#converterBoxAdv").width()>=920){
			$("#converterBoxAdv").css("height", "40em");
		}else{
			$("#converterBoxAdv").css("height", "");
		}
		if($("#converterContainerAdv").width()>991){
   			$("#panneauAdv-1").css("padding-top","5%");
   			$("#panneauAdv-2").css("padding-top","5%");
   			$("#panneauAdv-3").css("padding-top","5%");
   			$("#panneauAdv-4").css("padding-top","5%");
   			$("#panneauAdv-5").css("padding-top","5%");
   			$("#panneauAdv-6").css("padding-top","5%");
   			$("#panneauAdv-7").css("padding-top","5%");
   			$("#panneauAdv-8").css("padding-top","5%");
   			$("#panneauAdv-9").css("padding-top","5%");
   			$("#panneauAdv-10").css("padding-top","5%");
   			$("#panneauAdv-11").css("padding-top","5%");
   			$("#panneauAdv-12").css("padding-top","5%");
   			$(".panneau-gauche").css("margin-top","");
   			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainerAdv").width()>=469 && $("#converterContainerAdv").width()<=991){
			$("#panneauAdv-1").css("padding-top","10%");
			$("#panneauAdv-2").css("padding-top","10%");
			$("#panneauAdv-3").css("padding-top","10%");
			$("#panneauAdv-4").css("padding-top","10%");
			$("#panneauAdv-5").css("padding-top","10%");
			$("#panneauAdv-6").css("padding-top","10%");
			$("#panneauAdv-7").css("padding-top","10%");
			$("#panneauAdv-8").css("padding-top","10%");
			$("#panneauAdv-9").css("padding-top","10%");
			$("#panneauAdv-10").css("padding-top","10%");
			$("#panneauAdv-11").css("padding-top","10%");
			$("#panneauAdv-12").css("padding-top","10%");
			$(".panneau-gauche").css("margin-top","");
			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainerAdv").width()>=410 && $("#converterContainerAdv").width()<=468){
			$("#panneauAdv-1").css("padding-top","25%");
			$("#panneauAdv-2").css("padding-top","25%");
			$("#panneauAdv-3").css("padding-top","25%");
			$("#panneauAdv-4").css("padding-top","25%");
			$("#panneauAdv-5").css("padding-top","25%");
			$("#panneauAdv-6").css("padding-top","25%");
			$("#panneauAdv-7").css("padding-top","25%");
			$("#panneauAdv-8").css("padding-top","25%");
			$("#panneauAdv-9").css("padding-top","25%");
			$("#panneauAdv-10").css("padding-top","25%");
			$("#panneauAdv-11").css("padding-top","25%");
			$("#panneauAdv-12").css("padding-top","25%");
			$(".panneau-gauche").css("margin-top","10%");
			$(".panneau-droit").css("margin-top","15%");
		}else{
			$("#panneauAdv-1").css("padding-top","30%");
			$("#panneauAdv-2").css("padding-top","30%");
			$("#panneauAdv-3").css("padding-top","30%");
			$("#panneauAdv-4").css("padding-top","30%");
			$("#panneauAdv-5").css("padding-top","30%");
			$("#panneauAdv-6").css("padding-top","30%");
			$("#panneauAdv-7").css("padding-top","30%");
			$("#panneauAdv-8").css("padding-top","30%");
			$("#panneauAdv-9").css("padding-top","30%");
			$("#panneauAdv-10").css("padding-top","30%");
			$("#panneauAdv-11").css("padding-top","30%");
			$("#panneauAdv-12").css("padding-top","30%");
			$(".panneau-gauche").css("margin-top","15%");
			$(".panneau-droit").css("margin-top","20%");
		}

	window.addEventListener('resize',function(event){
        if($("#converterContainer").width()>991){
   			$("#panneau-1").css("padding-top","5%");
   			$("#panneau-2").css("padding-top","5%");
   			$("#panneau-3").css("padding-top","5%");
   			$("#panneau-4").css("padding-top","5%");
   			$("#panneau-5").css("padding-top","5%");
   			$("#panneau-6").css("padding-top","5%");
   			$("#panneau-7").css("padding-top","5%");
   			$("#panneau-8").css("padding-top","5%");
   			$("#panneau-9").css("padding-top","5%");
   			$("#panneau-10").css("padding-top","5%");
   			$("#panneau-11").css("padding-top","5%");
   			$("#panneau-12").css("padding-top","5%");
   			$(".panneau-gauche").css("margin-top","");
   			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainer").width()>=469 && $("#converterContainer").width()<=991){
			$("#panneau-1").css("padding-top","10%");
			$("#panneau-2").css("padding-top","10%");
			$("#panneau-3").css("padding-top","10%");
			$("#panneau-4").css("padding-top","10%");
			$("#panneau-5").css("padding-top","10%");
			$("#panneau-6").css("padding-top","10%");
			$("#panneau-7").css("padding-top","10%");
			$("#panneau-8").css("padding-top","10%");
			$("#panneau-9").css("padding-top","10%");
			$("#panneau-10").css("padding-top","10%");
			$("#panneau-11").css("padding-top","10%");
			$("#panneau-12").css("padding-top","10%");
			$(".panneau-gauche").css("margin-top","");
			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainer").width()>=410 && $("#converterContainer").width()<=468){
			$("#panneau-1").css("padding-top","25%");
			$("#panneau-2").css("padding-top","25%");
			$("#panneau-3").css("padding-top","25%");
			$("#panneau-4").css("padding-top","25%");
			$("#panneau-5").css("padding-top","25%");
			$("#panneau-6").css("padding-top","25%");
			$("#panneau-7").css("padding-top","25%");
			$("#panneau-8").css("padding-top","25%");
			$("#panneau-9").css("padding-top","25%");
			$("#panneau-10").css("padding-top","25%");
			$("#panneau-11").css("padding-top","25%");
			$("#panneau-12").css("padding-top","25%");
			$(".panneau-gauche").css("margin-top","10%");
			$(".panneau-droit").css("margin-top","15%");
		}else{
			$("#panneau-1").css("padding-top","30%");
			$("#panneau-2").css("padding-top","30%");
			$("#panneau-3").css("padding-top","30%");
			$("#panneau-4").css("padding-top","30%");
			$("#panneau-5").css("padding-top","30%");
			$("#panneau-6").css("padding-top","30%");
			$("#panneau-7").css("padding-top","30%");
			$("#panneau-8").css("padding-top","30%");
			$("#panneau-9").css("padding-top","30%");
			$("#panneau-10").css("padding-top","30%");
			$("#panneau-11").css("padding-top","30%");
			$("#panneau-12").css("padding-top","30%");
			$(".panneau-gauche").css("margin-top","15%");
			$(".panneau-droit").css("margin-top","20%");
		}
		if($("#converterContainerAdv").width()>991){
   			$("#panneauAdv-1").css("padding-top","5%");
   			$("#panneauAdv-2").css("padding-top","5%");
   			$("#panneauAdv-3").css("padding-top","5%");
   			$("#panneauAdv-4").css("padding-top","5%");
   			$("#panneauAdv-5").css("padding-top","5%");
   			$("#panneauAdv-6").css("padding-top","5%");
   			$("#panneauAdv-7").css("padding-top","5%");
   			$("#panneauAdv-8").css("padding-top","5%");
   			$("#panneauAdv-9").css("padding-top","5%");
   			$("#panneauAdv-10").css("padding-top","5%");
   			$("#panneauAdv-11").css("padding-top","5%");
   			$("#panneauAdv-12").css("padding-top","5%");
   			$(".panneau-gauche").css("margin-top","");
   			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainerAdv").width()>=469 && $("#converterContainerAdv").width()<=991){
			$("#panneauAdv-1").css("padding-top","10%");
			$("#panneauAdv-2").css("padding-top","10%");
			$("#panneauAdv-3").css("padding-top","10%");
			$("#panneauAdv-4").css("padding-top","10%");
			$("#panneauAdv-5").css("padding-top","10%");
			$("#panneauAdv-6").css("padding-top","10%");
			$("#panneauAdv-7").css("padding-top","10%");
			$("#panneauAdv-8").css("padding-top","10%");
			$("#panneauAdv-9").css("padding-top","10%");
			$("#panneauAdv-10").css("padding-top","10%");
			$("#panneauAdv-11").css("padding-top","10%");
			$("#panneauAdv-12").css("padding-top","10%");
			$(".panneau-gauche").css("margin-top","");
			$(".panneau-droit").css("margin-top","");
		}else if($("#converterContainerAdv").width()>=410 && $("#converterContainerAdv").width()<=468){
			$("#panneauAdv-1").css("padding-top","25%");
			$("#panneauAdv-2").css("padding-top","25%");
			$("#panneauAdv-3").css("padding-top","25%");
			$("#panneauAdv-4").css("padding-top","25%");
			$("#panneauAdv-5").css("padding-top","25%");
			$("#panneauAdv-6").css("padding-top","25%");
			$("#panneauAdv-7").css("padding-top","25%");
			$("#panneauAdv-8").css("padding-top","25%");
			$("#panneauAdv-9").css("padding-top","25%");
			$("#panneauAdv-10").css("padding-top","25%");
			$("#panneauAdv-11").css("padding-top","25%");
			$("#panneauAdv-12").css("padding-top","25%");
			$(".panneau-gauche").css("margin-top","10%");
			$(".panneau-droit").css("margin-top","15%");
		}else{
			$("#panneauAdv-1").css("padding-top","30%");
			$("#panneauAdv-2").css("padding-top","30%");
			$("#panneauAdv-3").css("padding-top","30%");
			$("#panneauAdv-4").css("padding-top","30%");
			$("#panneauAdv-5").css("padding-top","30%");
			$("#panneauAdv-6").css("padding-top","30%");
			$("#panneauAdv-7").css("padding-top","30%");
			$("#panneauAdv-8").css("padding-top","30%");
			$("#panneauAdv-9").css("padding-top","30%");
			$("#panneauAdv-10").css("padding-top","30%");
			$("#panneauAdv-11").css("padding-top","30%");
			$("#panneauAdv-12").css("padding-top","30%");
			$(".panneau-gauche").css("margin-top","15%");
			$(".panneau-droit").css("margin-top","20%");
		}
		if($("#converterBox").width()>=920){
			$("#converterBox").css("height", "40em");
		}else{
			$("#converterBox").css("height", "");
		}
		if($("#converterBoxAdv").width()>=920){
			$("#converterBoxAdv").css("height", "40em");
		}else{
			$("#converterBoxAdv").css("height", "");
		}
	});
 });



 function highlight(e) {

 	Array.prototype.forEach.call(t, function(el) {
    	el.classList.remove("selected");
	});

    if(e.target.nodeName === "SUP"){
    	t = document.getElementsByClassName(e.target.parentNode.className);
    	Array.prototype.forEach.call(t, function(el) {
    		el.classList.add("selected");
		});
	}else if (e.target.nodeName === "TH"){
		t = document.getElementsByClassName(e.target.className);
		Array.prototype.forEach.call(t, function(el) {
    		el.classList.add("selected");
		});
	}
 }

 tr = document.querySelectorAll("th");
 tr.forEach(function(e){
 	e.addEventListener("click", highlight);
 });
 var table = document.getElementById('tableau'),
 selected = table.getElementsByClassName('selected');

 // Instanciation des accordéons
 var list = document.querySelector( '[role="tablist"]' );
 var tablist = new window.Tablist( list );

 var listAdv = document.querySelector( '[role="tablistAdv"]' );
 var tablistAdv = new window.Tablist( listAdv );
{/ia_add_js}