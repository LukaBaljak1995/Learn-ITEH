<?php
require 'flight/Flight.php';
require 'jsonindent.php';
Flight::register('db', 'Database', array('learn_iteh','root',''));
$json_podaci = file_get_contents("php://input");
Flight::set('json_podaci', $json_podaci );
Flight::route('/', function(){
    echo 'hello world!';
});
//Svi tipovi definicije
Flight::route('GET /tipovidefinicije.json', function(){
	header ("Content-Type: application/json; charset=utf-8");
	$db = Flight::db();
	$db->select("TipDefinicije","*",null,null,null,null,null,null);
	$niz=array();
	while ($red=$db->getResult()->fetch_object()){
		$niz[] = $red;
	}
	$json_niz = json_encode ($niz,JSON_UNESCAPED_UNICODE);
	echo indent($json_niz);
	return false;
});
//Sve definicije odredjenog tipa
Flight::route('GET /definicijetipa/@tip.json', function($tip){
	header ("Content-Type: application/json; charset=utf-8");
	$db = Flight::db();
	$db->select("Definicija", "*", null, null, null, "TipDefinicijeID = ".$tip, null,null);
	$niz=array();
	while ($red=$db->getResult()->fetch_object()){
		$niz[] = $red;
	}
	$json_niz = json_encode ($niz,JSON_UNESCAPED_UNICODE);
	echo indent($json_niz);
	return false;
});
//Dodavanje odredjene definicije
Flight::route('POST /definicija', function(){
	header ("Content-Type: application/json; charset=utf-8");
	$db = Flight::db();
	$podaci_json = Flight::get("json_podaci");
	$podaci = json_decode ($podaci_json);
	if ($podaci == null){
	$odgovor["poruka"] = "Niste prosledili podatke!";
	$json_odgovor = json_encode ($odgovor);
	echo $json_odgovor;
	} else {
	if (!property_exists($podaci,'TekstDefinicije')||!property_exists($podaci,'Email')||!property_exists($podaci,'TipDefinicijeID')){
			$odgovor["poruka"] = "Niste prosledili korektne podatke!";
			$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
			echo $json_odgovor;
			return false;
	
	} else {
			$podaci_query = array();
			foreach ($podaci as $k=>$v){
				$v = "'".$v."'";
				$podaci_query[$k] = $v;
			}
			if ($db->insert("Definicija", "TekstDefinicije,Email,TipDefinicijeID",
				"'".$podaci->TekstDefinicije."','". $podaci->Email."',". $podaci->TipDefinicijeID)){
				$odgovor["poruka"] = "Definicija je uspešno dodata!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
			} else {
				$odgovor["poruka"] = "Došlo je do greške pri dodavanju definicije!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
			}
	}
	}	


});
//Izmena odredjene definicije
Flight::route('PUT /definicija/@id', function($id){
	header ("Content-Type: application/json; charset=utf-8");
	$db = Flight::db();
	$podaci_json = Flight::get("json_podaci");
	$podaci = json_decode ($podaci_json);
	if ($podaci == null){
	$odgovor["poruka"] = "Niste prosledili podatke";
	$json_odgovor = json_encode ($odgovor);
	echo $json_odgovor;
	} else {
	if (!property_exists($podaci,'TekstDefinicije')||!property_exists($podaci,'Email')||!property_exists($podaci,'TipDefinicijeID')){
			$odgovor["poruka"] = "Niste prosledili korektne podatke";
			$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
			echo $json_odgovor;
			return false;
	
	} else {
			$podaci_query = array();
			foreach ($podaci as $k=>$v){
				$v = "'".$v."'";
				$podaci_query[$k] = $v;
			}
			if ($db->update("Definicija", "DefinicijaID", $id, array("TekstDefinicije", "Email", "TipDefinicijeID"),
				array($podaci->TekstDefinicije, $podaci->Email, $podaci->TipDefinicijeID))){				
				$odgovor["poruka"] = "Definicija je uspešno izmenjena!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
			} else {
				$odgovor["poruka"] = "Došlo je do greške prilikom izmene definicije!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
			}
	}
	}	




});
//Brisanje odredjene definicije
Flight::route('DELETE /definicija/@id', function($id){
		header ("Content-Type: application/json; charset=utf-8");
		$db = Flight::db();
		if ($db->delete("Definicija", array("DefinicijaID"),array($id))){
				$odgovor["poruka"] = "Definicija je uspešno izbrisana!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
		} else {
				$odgovor["poruka"] = "Došlo je do greške prilikom brisanja definicije!";
				$json_odgovor = json_encode ($odgovor,JSON_UNESCAPED_UNICODE);
				echo $json_odgovor;
				return false;
		
		}		
				
});


Flight::start();
?>