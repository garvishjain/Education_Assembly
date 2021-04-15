<!doctype html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<title>:: Ericsson :: Setting</title>

<!-- Import package -->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%-- <%@ page import="java.sql.SQLException" %> --%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../assets/plugins/dropify/css/dropify.min.css">

<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css"/>
 <script type="text/javascript">
    	
    	var state_arr = new Array("Andaman & Nicobar", "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chandigarh", "Chhattisgarh", "Dadra & Nagar Haveli", "Daman & Diu", "Delhi", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu & Kashmir", "Jharkhand", "Karnataka", "Kerala", "Lakshadweep", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Orissa", "Pondicherry", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Tripura", "Uttar Pradesh", "Uttaranchal", "West Bengal");

var s_a = new Array();
s_a[0]="";
s_a[1]=" Alipur | Andaman Island | Anderson Island | Arainj-Laka-Punga | Austinabad | Bamboo Flat | Barren Island | Beadonabad | Betapur | Bindraban | Bonington | Brookesabad | Cadell Point | Calicut | Chetamale | Cinque Islands | Defence Island | Digilpur | Dolyganj | Flat Island | Geinyale | Great Coco Island | Haddo | Havelock Island | Henry Lawrence Island | Herbertabad | Hobdaypur | Ilichar | Ingoie | Inteview Island | Jangli Ghat | Jhon Lawrence Island | Karen | Kartara | KYD Islannd | Landfall Island | Little Andmand | Little Coco Island | Long Island | Maimyo | Malappuram | Manglutan | Manpur | Mitha Khari | Neill Island | Nicobar Island | North Brother Island | North Passage Island | North Sentinel Island | Nothen Reef Island | Outram Island | Pahlagaon | Palalankwe | Passage Island | Phaiapong | Phoenix Island | Port Blair | Preparis Island | Protheroepur | Rangachang | Rongat | Rutland Island | Sabari | Saddle Peak | Shadipur | Smith Island | Sound Island | South Sentinel Island | Spike Island | Tarmugli Island | Taylerabad | Titaije | Toibalawe | Tusonabad | West Island | Wimberleyganj | Yadita";
s_a[2]=" Achampet | Adilabad | Adoni | Alampur | Allagadda | Alur | Amalapuram | Amangallu | Anakapalle | Anantapur | Andole | Araku | Armoor | Asifabad | Aswaraopet | Atmakur | B. Kothakota | Badvel | Banaganapalle | Bandar | Bangarupalem | Banswada | Bapatla | Bellampalli | Bhadrachalam | Bhainsa | Bheemunipatnam | Bhimadole | Bhimavaram | Bhongir | Bhooragamphad | Boath | Bobbili | Bodhan | Chandoor | Chavitidibbalu | Chejerla | Chepurupalli | Cherial | Chevella | Chinnor | Chintalapudi | Chintapalle | Chirala | Chittoor | Chodavaram | Cuddapah | Cumbum | Darsi | Devarakonda | Dharmavaram | Dichpalli | Divi | Donakonda | Dronachalam | East Godavari | Eluru | Eturnagaram | Gadwal | Gajapathinagaram | Gajwel | Garladinne | Giddalur | Godavari | Gooty | Gudivada | Gudur | Guntur | Hindupur | Hunsabad | Huzurabad | Huzurnagar | Hyderabad | Ibrahimpatnam | Jaggayyapet | Jagtial | Jammalamadugu | Jangaon | Jangareddygudem | Jannaram | Kadiri | Kaikaluru | Kakinada | Kalwakurthy | Kalyandurg | Kamalapuram | Kamareddy | Kambadur | Kanaganapalle | Kandukuru | Kanigiri | Karimnagar | Kavali | Khammam | Khanapur (AP) | Kodangal | Koduru | Koilkuntla | Kollapur | Kothagudem | Kovvur | Krishna | Krosuru | Kuppam | Kurnool | Lakkireddipalli | Madakasira | Madanapalli | Madhira | Madnur | Mahabubabad | Mahabubnagar | Mahadevapur | Makthal | Mancherial | Mandapeta | Mangalagiri | Manthani | Markapur | Marturu | Medachal | Medak | Medarmetla | Metpalli | Mriyalguda | Mulug | Mylavaram | Nagarkurnool | Nalgonda | Nallacheruvu | Nampalle | Nandigama | Nandikotkur | Nandyal | Narasampet | Narasaraopet | Narayanakhed | Narayanpet | Narsapur | Narsipatnam | Nazvidu | Nelloe | Nellore | Nidamanur | Nirmal | Nizamabad | Nuguru | Ongole | Outsarangapalle | Paderu | Pakala | Palakonda | Paland | Palmaneru | Pamuru | Pargi | Parkal | Parvathipuram | Pathapatnam | Pattikonda | Peapalle | Peddapalli | Peddapuram | Penukonda | Piduguralla | Piler | Pithapuram | Podili | Polavaram | Prakasam | Proddatur | Pulivendla | Punganur | Putturu | Rajahmundri | Rajampeta | Ramachandrapuram | Ramannapet | Rampachodavaram | Rangareddy | Rapur | Rayachoti | Rayadurg | Razole | Repalle | Saluru | Sangareddy | Sathupalli | Sattenapalle | Satyavedu | Shadnagar | Siddavattam | Siddipet | Sileru | Sircilla | Sirpur Kagaznagar | Sodam | Sompeta | Srikakulam | Srikalahasthi | Srisailam | Srungavarapukota | Sudhimalla | Sullarpet | Tadepalligudem | Tadipatri | Tanduru | Tanuku | Tekkali | Tenali | Thungaturthy | Tirivuru | Tirupathi | Tuni | Udaygiri | Ulvapadu | Uravakonda | Utnor | V.R. Puram | Vaimpalli | Vayalpad | Venkatgiri | Venkatgirikota | Vijayawada | Vikrabad | Vinjamuru | Vinukonda | Visakhapatnam | Vizayanagaram | Vizianagaram | Vuyyuru | Wanaparthy | Warangal | Wardhannapet | Yelamanchili | Yelavaram | Yeleswaram | Yellandu | Yellanuru | Yellareddy | Yerragondapalem | Zahirabad ";
s_a[3]=" Along | Anini | Anjaw | Bameng | Basar | Changlang | Chowkhem | Daporizo | Dibang Valley | Dirang | Hayuliang | Huri | Itanagar | Jairampur | Kalaktung | Kameng | Khonsa | Kolaring | Kurung Kumey | Lohit | Lower Dibang Valley | Lower Subansiri | Mariyang | Mechuka | Miao | Nefra | Pakkekesang | Pangin | Papum Pare | Passighat | Roing | Sagalee | Seppa | Siang | Tali | Taliha | Tawang | Tezu | Tirap | Tuting | Upper Siang | Upper Subansiri | Yiang Kiag ";
s_a[4]=" Abhayapuri | Baithalangshu | Barama | Barpeta Road | Bihupuria | Bijni | Bilasipara | Bokajan | Bokakhat | Boko | Bongaigaon | Cachar | Cachar Hills | Darrang | Dhakuakhana | Dhemaji | Dhubri | Dibrugarh | Digboi | Diphu | Goalpara | Gohpur | Golaghat | Guwahati | Hailakandi | Hajo | Halflong | Hojai | Howraghat | Jorhat | Kamrup | Karbi Anglong | Karimganj | Kokarajhar | Kokrajhar | Lakhimpur | Maibong | Majuli | Mangaldoi | Mariani | Marigaon | Moranhat | Morigaon | Nagaon | Nalbari | Rangapara | Sadiya | Sibsagar | Silchar | Sivasagar | Sonitpur | Tarabarihat | Tezpur | Tinsukia | Udalgiri | Udalguri | UdarbondhBarpeta";
s_a[5]=" Adhaura | Amarpur | Araria | Areraj | Arrah | Arwal | Aurangabad | Bagaha | Banka | Banmankhi | Barachakia | Barauni | Barh | Barosi | Begusarai | Benipatti | Benipur | Bettiah | Bhabhua | Bhagalpur | Bhojpur | Bidupur | Biharsharif | Bikram | Bikramganj | Birpur | Buxar | Chakai | Champaran | Chapara | Dalsinghsarai | Danapur | Darbhanga | Daudnagar | Dhaka | Dhamdaha | Dumraon | Ekma | Forbesganj | Gaya | Gogri | Gopalganj | H.Kharagpur | Hajipur | Hathua | Hilsa | Imamganj | Jahanabad | Jainagar | Jamshedpur | Jamui | Jehanabad | Jhajha | Jhanjharpur | Kahalgaon | Kaimur (Bhabua) | Katihar | Katoria | Khagaria | Kishanganj | Korha | Lakhisarai | Madhepura | Madhubani | Maharajganj | Mahua | Mairwa | Mallehpur | Masrakh | Mohania | Monghyr | Motihari | Motipur | Munger | Muzaffarpur | Nabinagar | Nalanda | Narkatiaganj | Naugachia | Nawada | Pakribarwan | Pakridayal | Patna | Phulparas | Piro | Pupri | Purena | Purnia | Rafiganj | Rajauli | Ramnagar | Raniganj | Raxaul | Rohtas | Rosera | S.Bakhtiarpur | Saharsa | Samastipur | Saran | Sasaram | Seikhpura | Sheikhpura | Sheohar | Sherghati | Sidhawalia | Singhwara | Sitamarhi | Siwan | Sonepur | Supaul | Thakurganj | Triveniganj | Udakishanganj | Vaishali | Wazirganj";
s_a[6]=" Chandigarh | Mani Marja";
s_a[7]=" Ambikapur | Antagarh | Arang | Bacheli | Bagbahera | Bagicha | Baikunthpur | Balod | Balodabazar | Balrampur | Barpalli | Basana | Bastanar | Bastar | Bderajpur | Bemetara | Berla | Bhairongarh | Bhanupratappur | Bharathpur | Bhatapara | Bhilai | Bhilaigarh | Bhopalpatnam | Bijapur | Bilaspur | Bodla | Bokaband | Chandipara | Chhinagarh | Chhuriakala | Chingmut | Chuikhadan | Dabhara | Dallirajhara | Dantewada | Deobhog | Dhamda | Dhamtari | Dharamjaigarh | Dongargarh | Durg | Durgakondal | Fingeshwar | Gariaband | Garpa | Gharghoda | Gogunda | Ilamidi | Jagdalpur | Janjgir | Janjgir-Champa | Jarwa | Jashpur | Jashpurnagar | Kabirdham-Kawardha | Kanker | Kasdol | Kathdol | Kathghora | Kawardha | Keskal | Khairgarh | Kondagaon | Konta | Korba | Korea | Kota | Koyelibeda | Kuakunda | Kunkuri | Kurud | Lohadigundah | Lormi | Luckwada | Mahasamund | Makodi | Manendragarh | Manpur | Marwahi | Mohla | Mungeli | Nagri | Narainpur | Narayanpur | Neora | Netanar | Odgi | Padamkot | Pakhanjur | Pali | Pandaria | Pandishankar | Parasgaon | Pasan | Patan | Pathalgaon | Pendra | Pratappur | Premnagar | Raigarh | Raipur | Rajnandgaon | Rajpur | Ramchandrapur | Saraipali | Saranggarh | Sarona | Semaria | Shakti | Sitapur | Sukma | Surajpur | Surguja | Tapkara | Toynar | Udaipur | Uproda | Wadrainagar";
s_a[8]=" Amal | Amli | Bedpa | Chikhli | Dadra & Nagar Haveli | Dahikhed | Dolara | Galonda | Kanadi | Karchond | Khadoli | Kharadpada | Kherabari | Kherdi | Kothar | Luari | Mashat | Rakholi | Rudana | Saili | Sili | Silvassa | Sindavni | Udva | Umbarkoi | Vansda | Vasona | Velugam ";
s_a[9]=" Brancavare | Dagasi | Daman | Diu | Magarvara | Nagwa | Pariali | Passo Covo ";
s_a[10]=" Central Delhi | East Delhi | New Delhi | North Delhi | North East Delhi | North West Delhi | South Delhi | South West Delhi | West Delhi ";
s_a[11]=" Canacona | Candolim | Chinchinim | Cortalim | Goa | Jua | Madgaon | Mahem | Mapuca | Marmagao | Panji | Ponda | Sanvordem | Terekhol ";
s_a[12]=" Ahmedabad | Ahwa | Amod | Amreli | Anand | Anjar | Ankaleshwar | Babra | Balasinor | Banaskantha | Bansada | Bardoli | Bareja | Baroda | Barwala | Bayad | Bhachav | Bhanvad | Bharuch | Bhavnagar | Bhiloda | Bhuj | Billimora | Borsad | Botad | Chanasma | Chhota Udaipur | Chotila | Dabhoi | Dahod | Damnagar | Dang | Danta | Dasada | Dediapada | Deesa | Dehgam | Deodar | Devgadhbaria | Dhandhuka | Dhanera | Dharampur | Dhari | Dholka | Dhoraji | Dhrangadhra | Dhrol | Dwarka | Fortsongadh | Gadhada | Gandhi Nagar | Gariadhar | Godhra | Gogodar | Gondal | Halol | Halvad | Harij | Himatnagar | Idar | Jambusar | Jamjodhpur | Jamkalyanpur | Jamnagar | Jasdan | Jetpur | Jhagadia | Jhalod | Jodia | Junagadh | Junagarh | Kalawad | Kalol | Kapad Wanj | Keshod | Khambat | Khambhalia | Khavda | Kheda | Khedbrahma | Kheralu | Kodinar | Kotdasanghani | Kunkawav | Kutch | Kutchmandvi | Kutiyana | Lakhpat | Lakhtar | Lalpur | Limbdi | Limkheda | Lunavada | M.M.Mangrol | Mahuva | Malia-Hatina | Maliya | Malpur | Manavadar | Mandvi | Mangrol | Mehmedabad | Mehsana | Miyagam | Modasa | Morvi | Muli | Mundra | Nadiad | Nakhatrana | Nalia | Narmada | Naswadi | Navasari | Nizar | Okha | Paddhari | Padra | Palanpur | Palitana | Panchmahals | Patan | Pavijetpur | Porbandar | Prantij | Radhanpur | Rahpar | Rajaula | Rajkot | Rajpipla | Ranavav | Sabarkantha | Sanand | Sankheda | Santalpur | Santrampur | Savarkundla | Savli | Sayan | Sayla | Shehra | Sidhpur | Sihor | Sojitra | Sumrasar | Surat | Surendranagar | Talaja | Thara | Tharad | Thasra | Una-Diu | Upleta | Vadgam | Vadodara | Valia | Vallabhipur | Valod | Valsad | Vanthali | Vapi | Vav | Veraval | Vijapur | Viramgam | Visavadar | Visnagar | Vyara | Waghodia | Wankaner ";
s_a[13]=" Adampur Mandi | Ambala | Assandh | Bahadurgarh | Barara | Barwala | Bawal | Bawanikhera | Bhiwani | Charkhidadri | Cheeka | Chhachrauli | Dabwali | Ellenabad | Faridabad | Fatehabad | Ferojpur Jhirka | Gharaunda | Gohana | Gurgaon | Hansi | Hisar | Jagadhari | Jatusana | Jhajjar | Jind | Julana | Kaithal | Kalanaur | Kalanwali | Kalka | Karnal | Kosli | Kurukshetra | Loharu | Mahendragarh | Meham | Mewat | Mohindergarh | Naraingarh | Narnaul | Narwana | Nilokheri | Nuh | Palwal | Panchkula | Panipat | Pehowa | Ratia | Rewari | Rohtak | Safidon | Sirsa | Siwani | Sonipat | Tohana | Tohsam | Yamunanagar ";
s_a[14]=" Amb | Arki | Banjar | Bharmour | Bilaspur | Chamba | Churah | Dalhousie | Dehra Gopipur | Hamirpur | Jogindernagar | Kalpa | Kangra | Kinnaur | Kullu | Lahaul | Mandi | Nahan | Nalagarh | Nirmand | Nurpur | Palampur | Pangi | Paonta | Pooh | Rajgarh | Rampur Bushahar | Rohru | Shimla | Sirmaur | Solan | Spiti | Sundernagar | Theog | Udaipur | Una";
s_a[15]=" Akhnoor | Anantnag | Badgam | Bandipur | Baramulla | Basholi | Bedarwah | Budgam | Doda | Gulmarg | Jammu | Kalakot | Kargil | Karnah | Kathua | Kishtwar | Kulgam | Kupwara | Leh | Mahore | Nagrota | Nobra | Nowshera | Nyoma | Padam | Pahalgam | Patnitop | Poonch | Pulwama | Rajouri | Ramban | Ramnagar | Reasi | Samba | Srinagar | Udhampur | Vaishno Devi ";
s_a[16]=" Bagodar | Baharagora | Balumath | Barhi | Barkagaon | Barwadih | Basia | Bermo | Bhandaria | Bhawanathpur | Bishrampur | Bokaro | Bolwa | Bundu | Chaibasa | Chainpur | Chakardharpur | Chandil | Chatra | Chavparan | Daltonganj | Deoghar | Dhanbad | Dumka | Dumri | Garhwa | Garu | Ghaghra | Ghatsila | Giridih | Godda | Gomia | Govindpur | Gumla | Hazaribagh | Hunterganj | Ichak | Itki | Jagarnathpur | Jamshedpur | Jamtara | Japla | Jharmundi | Jhinkpani | Jhumaritalaiya | Kathikund | Kharsawa | Khunti | Koderma | Kolebira | Latehar | Lohardaga | Madhupur | Mahagama | Maheshpur Raj | Mandar | Mandu | Manoharpur | Muri | Nagarutatri | Nala | Noamundi | Pakur | Palamu | Palkot | Patan | Rajdhanwar | Rajmahal | Ramgarh | Ranchi | Sahibganj | Saraikela | Simaria | Simdega | Singhbhum | Tisri | Torpa ";
s_a[17]=" Afzalpur | Ainapur | Aland | Alur | Anekal | Ankola | Arsikere | Athani | Aurad | Bableshwar | Badami | Bagalkot | Bagepalli | Bailhongal | Bangalore | Bangalore Rural | Bangarpet | Bantwal | Basavakalyan | Basavanabagewadi | Basavapatna | Belgaum | Bellary | Belthangady | Belur | Bhadravati | Bhalki | Bhatkal | Bidar | Bijapur | Biligi | Chadchan | Challakere | Chamrajnagar | Channagiri | Channapatna | Channarayapatna | Chickmagalur | Chikballapur | Chikkaballapur | Chikkanayakanahalli | Chikkodi | Chikmagalur | Chincholi | Chintamani | Chitradurga | Chittapur | Cowdahalli | Davanagere | Deodurga | Devangere | Devarahippargi | Dharwad | Doddaballapur | Gadag | Gangavathi | Gokak | Gowribdanpur | Gubbi | Gulbarga | Gundlupet | H.B.Halli | H.D. Kote | Haliyal | Hampi | Hangal | Harapanahalli | Hassan | Haveri | Hebri | Hirekerur | Hiriyur | Holalkere | Holenarsipur | Honnali | Honnavar | Hosadurga | Hosakote | Hosanagara | Hospet | Hubli | Hukkeri | Humnabad | Hungund | Hunsagi | Hunsur | Huvinahadagali | Indi | Jagalur | Jamkhandi | Jewargi | Joida | K.R. Nagar | Kadur | Kalghatagi | Kamalapur | Kanakapura | Kannada | Kargal | Karkala | Karwar | Khanapur | Kodagu | Kolar | Kollegal | Koppa | Koppal | Koratageri | Krishnarajapet | Kudligi | Kumta | Kundapur | Kundgol | Kunigal | Kurugodu | Kustagi | Lingsugur | Madikeri | Madugiri | Malavalli | Malur | Mandya | Mangalore | Manipal | Manvi | Mashal | Molkalmuru | Mudalgi | Muddebihal | Mudhol | Mudigere | Mulbagal | Mundagod | Mundargi | Murugod | Mysore | Nagamangala | Nanjangud | Nargund | Narsimrajapur | Navalgund | Nelamangala | Nimburga | Pandavapura | Pavagada | Puttur | Raibag | Raichur | Ramdurg | Ranebennur | Ron | Sagar | Sakleshpur | Salkani | Sandur | Saundatti | Savanur | Sedam | Shahapur | Shankarnarayana | Shikaripura | Shimoga | Shirahatti | Shorapur | Siddapur | Sidlaghatta | Sindagi | Sindhanur | Sira | Sirsi | Siruguppa | Somwarpet | Sorab | Sringeri | Sriniwaspur | Srirangapatna | Sullia | T. Narsipur | Tallak | Tarikere | Telgi | Thirthahalli | Tiptur | Tumkur | Turuvekere | Udupi | Virajpet | Wadi | Yadgiri | Yelburga | Yellapur ";
s_a[18]=" Adimaly | Adoor | Agathy | Alappuzha | Alathur | Alleppey | Alwaye | Amini | Androth | Attingal | Badagara | Bitra | Calicut | Cannanore | Chetlet | Ernakulam | Idukki | Irinjalakuda | Kadamath | Kalpeni | Kalpetta | Kanhangad | Kanjirapally | Kannur | Karungapally | Kasargode | Kavarathy | Kiltan | Kochi | Koduvayur | Kollam | Kottayam | Kovalam | Kozhikode | Kunnamkulam | Malappuram | Mananthodi | Manjeri | Mannarghat | Mavelikkara | Minicoy | Munnar | Muvattupuzha | Nedumandad | Nedumgandam | Nilambur | Palai | Palakkad | Palghat | Pathaanamthitta | Pathanamthitta | Payyanur | Peermedu | Perinthalmanna | Perumbavoor | Punalur | Quilon | Ranni | Shertallai | Shoranur | Taliparamba | Tellicherry | Thiruvananthapuram | Thodupuzha | Thrissur | Tirur | Tiruvalla | Trichur | Trivandrum | Uppala | Vadakkanchery | Vikom | Wayanad ";
s_a[19]=" Agatti Island | Bingaram Island | Bitra Island | Chetlat Island | Kadmat Island | Kalpeni Island | Kavaratti Island | Kiltan Island | Lakshadweep Sea | Minicoy Island | North Island | South Island ";
s_a[20]=" Agar | Ajaigarh | Alirajpur | Amarpatan | Amarwada | Ambah | Anuppur | Arone | Ashoknagar | Ashta | Atner | Babaichichli | Badamalhera | Badarwsas | Badnagar | Badnawar | Badwani | Bagli | Baihar | Balaghat | Baldeogarh | Baldi | Bamori | Banda | Bandhavgarh | Bareli | Baroda | Barwaha | Barwani | Batkakhapa | Begamganj | Beohari | Berasia | Berchha | Betul | Bhainsdehi | Bhander | Bhanpura | Bhikangaon | Bhimpur | Bhind | Bhitarwar | Bhopal | Biaora | Bijadandi | Bijawar | Bijaypur | Bina | Birsa | Birsinghpur | Budhni | Burhanpur | Buxwaha | Chachaura | Chanderi | Chaurai | Chhapara | Chhatarpur | Chhindwara | Chicholi | Chitrangi | Churhat | Dabra | Damoh | Datia | Deori | Deosar | Depalpur | Dewas | Dhar | Dharampuri | Dindori | Gadarwara | Gairatganj | Ganjbasoda | Garoth | Ghansour | Ghatia | Ghatigaon | Ghorandogri | Ghughari | Gogaon | Gohad | Goharganj | Gopalganj | Gotegaon | Gourihar | Guna | Gunnore | Gwalior | Gyraspur | Hanumana | Harda | Harrai | Harsud | Hatta | Hoshangabad | Ichhawar | Indore | Isagarh | Itarsi | Jabalpur | Jabera | Jagdalpur | Jaisinghnagar | Jaithari | Jaitpur | Jaitwara | Jamai | Jaora | Jatara | Jawad | Jhabua | Jobat | Jora | Kakaiya | Kannod | Kannodi | Karanjia | Kareli | Karera | Karhal | Karpa | Kasrawad | Katangi | Katni | Keolari | Khachrod | Khajuraho | Khakner | Khalwa | Khandwa | Khaniadhana | Khargone | Khategaon | Khetia | Khilchipur | Khirkiya | Khurai | Kolaras | Kotma | Kukshi | Kundam | Kurwai | Kusmi | Laher | Lakhnadon | Lamta | Lanji | Lateri | Laundi | Maheshwar | Mahidpurcity | Maihar | Majhagwan | Majholi | Malhargarh | Manasa | Manawar | Mandla | Mandsaur | Manpur | Mauganj | Mawai | Mehgaon | Mhow | Morena | Multai | Mungaoli | Nagod | Nainpur | Narsingarh | Narsinghpur | Narwar | Nasrullaganj | Nateran | Neemuch | Niwari | Niwas | Nowgaon | Pachmarhi | Pandhana | Pandhurna | Panna | Parasia | Patan | Patera | Patharia | Pawai | Petlawad | Pichhore | Piparia | Pohari | Prabhapattan | Punasa | Pushprajgarh | Raghogarh | Raghunathpur | Rahatgarh | Raisen | Rajgarh | Rajpur | Ratlam | Rehli | Rewa | Sabalgarh | Sagar | Sailana | Sanwer | Sarangpur | Sardarpur | Satna | Saunsar | Sehore | Sendhwa | Seondha | Seoni | Seonimalwa | Shahdol | Shahnagar | Shahpur | Shajapur | Sheopur | Sheopurkalan | Shivpuri | Shujalpur | Sidhi | Sihora | Silwani | Singrauli | Sirmour | Sironj | Sitamau | Sohagpur | Sondhwa | Sonkatch | Susner | Tamia | Tarana | Tendukheda | Teonthar | Thandla | Tikamgarh | Timarani | Udaipura | Ujjain | Umaria | Umariapan | Vidisha | Vijayraghogarh | Waraseoni | Zhirnia ";
s_a[21]=" Achalpur | Aheri | Ahmednagar | Ahmedpur | Ajara | Akkalkot | Akola | Akole | Akot | Alibagh | Amagaon | Amalner | Ambad | Ambejogai | Amravati | Arjuni Merogaon | Arvi | Ashti | Atpadi | Aurangabad | Ausa | Babhulgaon | Balapur | Baramati | Barshi Takli | Barsi | Basmatnagar | Bassein | Beed | Bhadrawati | Bhamregadh | Bhandara | Bhir | Bhiwandi | Bhiwapur | Bhokar | Bhokardan | Bhoom | Bhor | Bhudargad | Bhusawal | Billoli | Brahmapuri | Buldhana | Butibori | Chalisgaon | Chamorshi | Chandgad | Chandrapur | Chandur | Chanwad | Chhikaldara | Chikhali | Chinchwad | Chiplun | Chopda | Chumur | Dahanu | Dapoli | Darwaha | Daryapur | Daund | Degloor | Delhi Tanda | Deogad | Deolgaonraja | Deori | Desaiganj | Dhadgaon | Dhanora | Dharani | Dhiwadi | Dhule | Dhulia | Digras | Dindori | Edalabad | Erandul | Etapalli | Gadhchiroli | Gadhinglaj | Gaganbavada | Gangakhed | Gangapur | Gevrai | Ghatanji | Golegaon | Gondia | Gondpipri | Goregaon | Guhagar | Hadgaon | Hatkangale | Hinganghat | Hingoli | Hingua | Igatpuri | Indapur | Islampur | Jalgaon | Jalna | Jamkhed | Jamner | Jath | Jawahar | Jintdor | Junnar | Kagal | Kaij | Kalamb | Kalamnuri | Kallam | Kalmeshwar | Kalwan | Kalyan | Kamptee | Kandhar | Kankavali | Kannad | Karad | Karjat | Karmala | Katol | Kavathemankal | Kedgaon | Khadakwasala | Khamgaon | Khed | Khopoli | Khultabad | Kinwat | Kolhapur | Kopargaon | Koregaon | Kudal | Kuhi | Kurkheda | Kusumba | Lakhandur | Langa | Latur | Lonar | Lonavala | Madangad | Madha | Mahabaleshwar | Mahad | Mahagaon | Mahasala | Mahaswad | Malegaon | Malgaon | Malgund | Malkapur | Malsuras | Malwan | Mancher | Mangalwedha | Mangaon | Mangrulpur | Manjalegaon | Manmad | Maregaon | Mehda | Mekhar | Mohadi | Mohol | Mokhada | Morshi | Mouda | Mukhed | Mul | Mumbai | Murbad | Murtizapur | Murud | Nagbhir | Nagpur | Nahavara | Nanded | Nandgaon | Nandnva | Nandurbar | Narkhed | Nashik | Navapur | Ner | Newasa | Nilanga | Niphad | Omerga | Osmanabad | Pachora | Paithan | Palghar | Pali | Pandharkawada | Pandharpur | Panhala | Paranda | Parbhani | Parner | Parola | Parseoni | Partur | Patan | Pathardi | Pathari | Patoda | Pauni | Peint | Pen | Phaltan | Pimpalner | Pirangut | Poladpur | Pune | Pusad | Pusegaon | Radhanagar | Rahuri | Raigad | Rajapur | Rajgurunagar | Rajura | Ralegaon | Ramtek | Ratnagiri | Raver | Risod | Roha | Sakarwadi | Sakoli | Sakri | Salekasa | Samudrapur | Sangamner | Sanganeshwar | Sangli | Sangola | Sanguem | Saoner | Saswad | Satana | Satara | Sawantwadi | Seloo | Shahada | Shahapur | Shahuwadi | Shevgaon | Shirala | Shirol | Shirpur | Shirur | Shirwal | Sholapur | Shri Rampur | Shrigonda | Shrivardhan | Sillod | Sinderwahi | Sindhudurg | Sindkheda | Sindkhedaraja | Sinnar | Sironcha | Soyegaon | Surgena | Talasari | Talegaon S.Ji Pant | Taloda | Tasgaon | Thane | Tirora | Tiwasa | Trimbak | Tuljapur | Tumsar | Udgir | Umarkhed | Umrane | Umrer | Urlikanchan | Vaduj | Velhe | Vengurla | Vijapur | Vita | Wada | Wai | Walchandnagar | Wani | Wardha | Warlydwarud | Warora | Washim | Wathar | Yavatmal | Yawal | Yeola | Yeotmal ";
s_a[22]=" Bishnupur | Chakpikarong | Chandel | Chattrik | Churachandpur | Imphal | Jiribam | Kakching | Kalapahar | Mao | Mulam | Parbung | Sadarhills | Saibom | Sempang | Senapati | Sochumer | Taloulong | Tamenglong | Thinghat | Thoubal | Ukhrul ";
s_a[23]=" Amlaren | Baghmara | Cherrapunjee | Dadengiri | Garo Hills | Jaintia Hills | Jowai | Khasi Hills | Khliehriat | Mariang | Mawkyrwat | Nongpoh | Nongstoin | Resubelpara | Ri Bhoi | Shillong | Tura | Williamnagar";
s_a[24]=" Aizawl | Champhai | Demagiri | Kolasib | Lawngtlai | Lunglei | Mamit | Saiha | Serchhip";
s_a[25]=" Dimapur | Jalukie | Kiphire | Kohima | Mokokchung | Mon | Phek | Tuensang | Wokha | Zunheboto ";
s_a[26]=" Anandapur | Angul | Anugul | Aska | Athgarh | Athmallik | Attabira | Bagdihi | Balangir | Balasore | Baleswar | Baliguda | Balugaon | Banaigarh | Bangiriposi | Barbil | Bargarh | Baripada | Barkot | Basta | Berhampur | Betanati | Bhadrak | Bhanjanagar | Bhawanipatna | Bhubaneswar | Birmaharajpur | Bisam Cuttack | Boriguma | Boudh | Buguda | Chandbali | Chhatrapur | Chhendipada | Cuttack | Daringbadi | Daspalla | Deodgarh | Deogarh | Dhanmandal | Dharamgarh | Dhenkanal | Digapahandi | Dunguripali | G. Udayagiri | Gajapati | Ganjam | Ghatgaon | Gudari | Gunupur | Hemgiri | Hindol | Jagatsinghapur | Jajpur | Jamankira | Jashipur | Jayapatna | Jeypur | Jharigan | Jharsuguda | Jujumura | Kalahandi | Kalimela | Kamakhyanagar | Kandhamal | Kantabhanji | Kantamal | Karanjia | Kashipur | Kendrapara | Kendujhar | Keonjhar | Khalikote | Khordha | Khurda | Komana | Koraput | Kotagarh | Kuchinda | Lahunipara | Laxmipur | M. Rampur | Malkangiri | Mathili | Mayurbhanj | Mohana | Motu | Nabarangapur | Naktideul | Nandapur | Narlaroad | Narsinghpur | Nayagarh | Nimapara | Nowparatan | Nowrangapur | Nuapada | Padampur | Paikamal | Palla Hara | Papadhandi | Parajang | Pardip | Parlakhemundi | Patnagarh | Pattamundai | Phiringia | Phulbani | Puri | Puruna Katak | R. Udayigiri | Rairakhol | Rairangpur | Rajgangpur | Rajkhariar | Rayagada | Rourkela | Sambalpur | Sohela | Sonapur | Soro | Subarnapur | Sunabeda | Sundergarh | Surada | T. Rampur | Talcher | Telkoi | Titlagarh | Tumudibandha | Udala | Umerkote ";
s_a[27]=" Bahur | Karaikal | Mahe | Pondicherry | Purnankuppam | Valudavur | Villianur | Yanam ";
s_a[28]=" Abohar | Ajnala | Amritsar | Balachaur | Barnala | Batala | Bathinda | Chandigarh | Dasua | Dinanagar | Faridkot | Fatehgarh Sahib | Fazilka | Ferozepur | Garhashanker | Goindwal | Gurdaspur | Guruharsahai | Hoshiarpur | Jagraon | Jalandhar | Jugial | Kapurthala | Kharar | Kotkapura | Ludhiana | Malaut | Malerkotla | Mansa | Moga | Muktasar | Nabha | Nakodar | Nangal | Nawanshahar | Nawanshahr | Pathankot | Patiala | Patti | Phagwara | Phillaur | Phulmandi | Quadian | Rajpura | Raman | Rayya | Ropar | Rupnagar | Samana | Samrala | Sangrur | Sardulgarh | Sarhind | SAS Nagar | Sultanpur Lodhi | Sunam | Tanda Urmar | Tarn Taran | Zira ";
s_a[29]=" Abu Road | Ahore | Ajmer | Aklera | Alwar | Amber | Amet | Anupgarh | Asind | Aspur | Atru | Bagidora | Bali | Bamanwas | Banera | Bansur | Banswara | Baran | Bari | Barisadri | Barmer | Baseri | Bassi | Baswa | Bayana | Beawar | Begun | Behror | Bhadra | Bharatpur | Bhilwara | Bhim | Bhinmal | Bikaner | Bilara | Bundi | Chhabra | Chhipaborad | Chirawa | Chittorgarh | Chohtan | Churu | Dantaramgarh | Dausa | Deedwana | Deeg | Degana | Deogarh | Deoli | Desuri | Dhariawad | Dholpur | Digod | Dudu | Dungarpur | Dungla | Fatehpur | Gangapur | Gangdhar | Gerhi | Ghatol | Girwa | Gogunda | Hanumangarh | Hindaun | Hindoli | Hurda | Jahazpur | Jaipur | Jaisalmer | Jalore | Jhalawar | Jhunjhunu | Jodhpur | Kaman | Kapasan | Karauli | Kekri | Keshoraipatan | Khandar | Kherwara | Khetri | Kishanganj | Kishangarh | Kishangarhbas | Kolayat | Kota | Kotputli | Kotra | Kotri | Kumbalgarh | Kushalgarh | Ladnun | Ladpura | Lalsot | Laxmangarh | Lunkaransar | Mahuwa | Malpura | Malvi | Mandal | Mandalgarh | Mandawar | Mangrol | Marwar-Jn | Merta | Nadbai | Nagaur | Nainwa | Nasirabad | Nathdwara | Nawa | Neem Ka Thana | Newai | Nimbahera | Nohar | Nokha | Onli | Osian | Pachpadara | Pachpahar | Padampur | Pali | Parbatsar | Phagi | Phalodi | Pilani | Pindwara | Pipalda | Pirawa | Pokaran | Pratapgarh | Raipur | Raisinghnagar | Rajgarh | Rajsamand | Ramganj Mandi | Ramgarh | Rashmi | Ratangarh | Reodar | Rupbas | Sadulshahar | Sagwara | Sahabad | Salumber | Sanchore | Sangaria | Sangod | Sapotra | Sarada | Sardarshahar | Sarwar | Sawai Madhopur | Shahapura | Sheo | Sheoganj | Shergarh | Sikar | Sirohi | Siwana | Sojat | Sri Dungargarh | Sri Ganganagar | Sri Karanpur | Sri Madhopur | Sujangarh | Taranagar | Thanaghazi | Tibbi | Tijara | Todaraisingh | Tonk | Udaipur | Udaipurwati | Uniayara | Vallabhnagar | Viratnagar ";
s_a[30]=" Barmiak | Be | Bhurtuk | Chhubakha | Chidam | Chubha | Chumikteng | Dentam | Dikchu | Dzongri | Gangtok | Gauzing | Gyalshing | Hema | Kerung | Lachen | Lachung | Lema | Lingtam | Lungthu | Mangan | Namchi | Namthang | Nanga | Nantang | Naya Bazar | Padamachen | Pakhyong | Pemayangtse | Phensang | Rangli | Rinchingpong | Sakyong | Samdong | Singtam | Siniolchu | Sombari | Soreng | Sosing | Tekhug | Temi | Tsetang | Tsomgo | Tumlong | Yangang | Yumtang ";
s_a[31]=" Ambasamudram | Anamali | Arakandanallur | Arantangi | Aravakurichi | Ariyalur | Arkonam | Arni | Aruppukottai | Attur | Avanashi | Batlagundu | Bhavani | Chengalpattu | Chengam | Chennai | Chidambaram | Chingleput | Coimbatore | Courtallam | Cuddalore | Cumbum | Denkanikoitah | Devakottai | Dharampuram | Dharmapuri | Dindigul | Erode | Gingee | Gobichettipalayam | Gudalur | Gudiyatham | Harur | Hosur | Jayamkondan | Kallkurichi | Kanchipuram | Kangayam | Kanyakumari | Karaikal | Karaikudi | Karur | Keeranur | Kodaikanal | Kodumudi | Kotagiri | Kovilpatti | Krishnagiri | Kulithalai | Kumbakonam | Kuzhithurai | Madurai | Madurantgam | Manamadurai | Manaparai | Mannargudi | Mayiladuthurai | Mayiladutjurai | Mettupalayam | Metturdam | Mudukulathur | Mulanur | Musiri | Nagapattinam | Nagarcoil | Namakkal | Nanguneri | Natham | Neyveli | Nilgiris | Oddanchatram | Omalpur | Ootacamund | Ooty | Orathanad | Palacode | Palani | Palladum | Papanasam | Paramakudi | Pattukottai | Perambalur | Perundurai | Pollachi | Polur | Pondicherry | Ponnamaravathi | Ponneri | Pudukkottai | Rajapalayam | Ramanathapuram | Rameshwaram | Ranipet | Rasipuram | Salem | Sankagiri | Sankaran | Sathiyamangalam | Sivaganga | Sivakasi | Sriperumpudur | Srivaikundam | Tenkasi | Thanjavur | Theni | Thirumanglam | Thiruraipoondi | Thoothukudi | Thuraiyure | Tindivanam | Tiruchendur | Tiruchengode | Tiruchirappalli | Tirunelvelli | Tirupathur | Tirupur | Tiruttani | Tiruvallur | Tiruvannamalai | Tiruvarur | Tiruvellore | Tiruvettipuram | Trichy | Tuticorin | Udumalpet | Ulundurpet | Usiliampatti | Uthangarai | Valapady | Valliyoor | Vaniyambadi | Vedasandur | Vellore | Velur | Vilathikulam | Villupuram | Virudhachalam | Virudhunagar | Wandiwash | Yercaud ";
s_a[32]=" Agartala | Ambasa | Bampurbari | Belonia | Dhalai | Dharam Nagar | Kailashahar | Kamal Krishnabari | Khopaiyapara | Khowai | Phuldungsei | Radha Kishore Pur | Tripura ";
s_a[33]=" Achhnera | Agra | Akbarpur | Aliganj | Aligarh | Allahabad | Ambedkar Nagar | Amethi | Amiliya | Amroha | Anola | Atrauli | Auraiya | Azamgarh | Baberu | Badaun | Baghpat | Bagpat | Baheri | Bahraich | Ballia | Balrampur | Banda | Bansdeeh | Bansgaon | Bansi | Barabanki | Bareilly | Basti | Bhadohi | Bharthana | Bharwari | Bhogaon | Bhognipur | Bidhuna | Bijnore | Bikapur | Bilari | Bilgram | Bilhaur | Bindki | Bisalpur | Bisauli | Biswan | Budaun | Budhana | Bulandshahar | Bulandshahr | Capianganj | Chakia | Chandauli | Charkhari | Chhata | Chhibramau | Chirgaon | Chitrakoot | Chunur | Dadri | Dalmau | Dataganj | Debai | Deoband | Deoria | Derapur | Dhampur | Domariyaganj | Dudhi | Etah | Etawah | Faizabad | Farrukhabad | Fatehpur | Firozabad | Garauth | Garhmukteshwar | Gautam Buddha Nagar | Ghatampur | Ghaziabad | Ghazipur | Ghosi | Gonda | Gorakhpur | Gunnaur | Haidergarh | Hamirpur | Hapur | Hardoi | Harraiya | Hasanganj | Hasanpur | Hathras | Jalalabad | Jalaun | Jalesar | Jansath | Jarar | Jasrana | Jaunpur | Jhansi | Jyotiba Phule Nagar | Kadipur | Kaimganj | Kairana | Kaisarganj | Kalpi | Kannauj | Kanpur | Karchhana | Karhal | Karvi | Kasganj | Kaushambi | Kerakat | Khaga | Khair | Khalilabad | Kheri | Konch | Kumaon | Kunda | Kushinagar | Lalganj | Lalitpur | Lucknow | Machlishahar | Maharajganj | Mahoba | Mainpuri | Malihabad | Mariyahu | Math | Mathura | Mau | Maudaha | Maunathbhanjan | Mauranipur | Mawana | Meerut | Mehraun | Meja | Mirzapur | Misrikh | Modinagar | Mohamdabad | Mohamdi | Moradabad | Musafirkhana | Muzaffarnagar | Nagina | Najibabad | Nakur | Nanpara | Naraini | Naugarh | Nawabganj | Nighasan | Noida | Orai | Padrauna | Pahasu | Patti | Pharenda | Phoolpur | Phulpur | Pilibhit | Pitamberpur | Powayan | Pratapgarh | Puranpur | Purwa | Raibareli | Rampur | Ramsanehi Ghat | Rasara | Rath | Robertsganj | Sadabad | Safipur | Sagri | Saharanpur | Sahaswan | Sahjahanpur | Saidpur | Salempur | Salon | Sambhal | Sandila | Sant Kabir Nagar | Sant Ravidas Nagar | Sardhana | Shahabad | Shahganj | Shahjahanpur | Shikohabad | Shravasti | Siddharthnagar | Sidhauli | Sikandra Rao | Sikandrabad | Sitapur | Siyana | Sonbhadra | Soraon | Sultanpur | Tanda | Tarabganj | Tilhar | Unnao | Utraula | Varanasi | Zamania ";
s_a[34]=" Almora | Bageshwar | Bhatwari | Chakrata | Chamoli | Champawat | Dehradun | Deoprayag | Dharchula | Dunda | Haldwani | Haridwar | Joshimath | Karan Prayag | Kashipur | Khatima | Kichha | Lansdown | Munsiari | Mussoorie | Nainital | Pantnagar | Partapnagar | Pauri Garhwal | Pithoragarh | Purola | Rajgarh | Ranikhet | Roorkee | Rudraprayag | Tehri Garhwal | Udham Singh Nagar | Ukhimath | Uttarkashi ";
s_a[35]=" Adra | Alipurduar | Amlagora | Arambagh | Asansol | Balurghat | Bankura | Bardhaman | Basirhat | Berhampur | Bethuadahari | Birbhum | Birpara | Bishanpur | Bolpur | Bongoan | Bulbulchandi | Burdwan | Calcutta | Canning | Champadanga | Contai | Cooch Behar | Daimond Harbour | Dalkhola | Dantan | Darjeeling | Dhaniakhali | Dhuliyan | Dinajpur | Dinhata | Durgapur | Gangajalghati | Gangarampur | Ghatal | Guskara | Habra | Haldia | Harirampur | Harishchandrapur | Hooghly | Howrah | Islampur | Jagatballavpur | Jalpaiguri | Jhalda | Jhargram | Kakdwip | Kalchini | Kalimpong | Kalna | Kandi | Karimpur | Katwa | Kharagpur | Khatra | Krishnanagar | Mal Bazar | Malda | Manbazar | Mathabhanga | Medinipur | Mekhliganj | Mirzapur | Murshidabad | Nadia | Nagarakata | Nalhati | Nayagarh | Parganas | Purulia | Raiganj | Rampur Hat | Ranaghat | Seharabazar | Siliguri | Suri | Takipur | Tamluk";

function print_state(state_id){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var option_str = document.getElementById(state_id);
	option_str.length=0;
	option_str.options[0] = new Option('Select State','');
	option_str.selectedIndex = 0;
	for (var i=0; i<state_arr.length; i++) {
		option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function print_city(city_id, city_index){
	var option_str = document.getElementById(city_id);
	option_str.length=0;	// Fixed by Julian Woods
	option_str.options[0] = new Option('Select City','');
	option_str.selectedIndex = 0;
	var city_arr = s_a[city_index].split("|");
	for (var i=0; i<city_arr.length; i++) {
		option_str.options[option_str.length] = new Option(city_arr[i],city_arr[i]);
	}
}
</script>
</head>

<body class="font-muli theme-cyan gradient">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>

<div id="main_content">
    <!-- Start Main top header -->
    <div id="header_top" class="header_top">
        <div class="container">
            <div class="hleft">
                <a class="header-brand" href="index.html"><i class="fa fa-graduation-cap brand-logo"></i></a>
                <div class="dropdown">
                    <a href="javascript:void(0)" class="nav-link icon menu_toggle"><i class="fe fe-align-center"></i></a>
                    <a href="page-search.html" class="nav-link icon"><i class="fe fe-search" data-toggle="tooltip" data-placement="right" title="Search..."></i></a>
                    <a href="app-email.html"  class="nav-link icon app_inbox"><i class="fe fe-inbox" data-toggle="tooltip" data-placement="right" title="Inbox"></i></a>
                    <a href="app-filemanager.html"  class="nav-link icon app_file xs-hide"><i class="fe fe-folder" data-toggle="tooltip" data-placement="right" title="File Manager"></i></a>
                    <a href="app-social.html"  class="nav-link icon xs-hide"><i class="fe fe-share-2" data-toggle="tooltip" data-placement="right" title="Social Media"></i></a>
                    <a href="javascript:void(0)" class="nav-link icon theme_btn"><i class="fe fe-feather"></i></a>
                    <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fe fe-settings"></i></a>
                </div>
            </div>
            <div class="hright">
                <a href="javascript:void(0)" class="nav-link icon right_tab"><i class="fe fe-align-right"></i></a>
                <a href="login.html" class="nav-link icon settingbar"><i class="fe fe-power"></i></a>                
            </div>
        </div>
    </div>
    <!-- Start Rightbar setting panel -->
    <div id="rightsidebar" class="right_sidebar">
        <a href="javascript:void(0)" class="p-3 settingbar float-right"><i class="fa fa-close"></i></a>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Settings" aria-expanded="true">Settings</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#activity" aria-expanded="false">Activity</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane vivify fadeIn active" id="Settings" aria-expanded="true">
                <div class="mb-4">
                    <h6 class="font-14 font-weight-bold text-muted">Theme Color</h6>
                    <ul class="choose-skin list-unstyled mb-0">
                        <li data-theme="azure"><div class="azure"></div></li>
                        <li data-theme="indigo"><div class="indigo"></div></li>
                        <li data-theme="purple"><div class="purple"></div></li>
                        <li data-theme="orange"><div class="orange"></div></li>
                        <li data-theme="green"><div class="green"></div></li>
                        <li data-theme="cyan" class="active"><div class="cyan"></div></li>
                        <li data-theme="blush"><div class="blush"></div></li>
                        <li data-theme="white"><div class="bg-white"></div></li>
                    </ul>
                </div>
                <div class="mb-4">
                    <h6 class="font-14 font-weight-bold text-muted">Font Style</h6>
                    <div class="custom-controls-stacked font_setting">
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-muli" checked="">
                            <span class="custom-control-label">Muli Google Font</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-montserrat">
                            <span class="custom-control-label">Montserrat Google Font</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-poppins">
                            <span class="custom-control-label">Poppins Google Font</span>
                        </label>
                    </div>
                </div>
                <div>
                    <h6 class="font-14 font-weight-bold mt-4 text-muted">General Settings</h6>
                    <ul class="setting-list list-unstyled mt-1 setting_switch">
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Night Mode</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-darkmode">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Fix Navbar top</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-fixnavbar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Header Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-pageheader">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Min Sidebar Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-min_sidebar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Sidebar Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-sidebar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Icon Color</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-iconcolor">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Gradient Color</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-gradient" checked="">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Box Shadow</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxshadow">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">RTL Support</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-rtl">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Box Layout</span>
                                <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxlayout">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                    </ul>
                </div>
                <hr>
                <div class="form-group">
                    <label class="d-block">Storage <span class="float-right">77%</span></label>
                    <div class="progress progress-sm">
                        <div class="progress-bar" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;"></div>
                    </div>
                    <button type="button" class="btn btn-primary btn-block mt-3">Upgrade Storage</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane vivify fadeIn" id="activity" aria-expanded="false">
                <ul class="new_timeline mt-3">
                    <li>
                        <div class="bullet pink"></div>
                        <div class="time">11:00am</div>
                        <div class="desc">
                            <h3>Attendance</h3>
                            <h4>Computer Class</h4>
                        </div>
                    </li>
                    <li>
                        <div class="bullet pink"></div>
                        <div class="time">11:30am</div>
                        <div class="desc">
                            <h3>Added an interest</h3>
                            <h4>“Volunteer Activities”</h4>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">12:00pm</div>
                        <div class="desc">
                            <h3>Developer Team</h3>
                            <h4>Hangouts</h4>
                            <ul class="list-unstyled team-info margin-0 p-t-5">                                            
                                <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>                                            
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">2:00pm</div>
                        <div class="desc">
                            <h3>Responded to need</h3>
                            <a href="javascript:void(0)">“In-Kind Opportunity”</a>
                        </div>
                    </li>
                    <li>
                        <div class="bullet orange"></div>
                        <div class="time">1:30pm</div>
                        <div class="desc">
                            <h3>Lunch Break</h3>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">2:38pm</div>
                        <div class="desc">
                            <h3>Finish</h3>
                            <h4>Go to Home</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Start Theme panel do not add in project -->
    <div class="theme_div">
        <div class="card">
            <div class="card-body">
                <ul class="list-group list-unstyled">
                    <li class="list-group-item mb-2">
                        <p>Light Version</p>
                        <a href="../university/index.html"><img src="../assets/images/themes/default.png" class="img-fluid" alt="" /></a>
                    </li>
                    <li class="list-group-item mb-2">
                        <p>Dark Version</p>
                        <a href="../university-dark/index.html"><img src="../assets/images/themes/dark.png" class="img-fluid" alt="" /></a>
                    </li>
                    <li class="list-group-item mb-2">
                        <p>RTL Version</p>
                        <a href="../university-rtl/index.html"><img src="../assets/images/themes/rtl.png" class="img-fluid" alt="" /></a>
                    </li>
                </ul>
            </div>
        </div>        
    </div>
    <!-- Start Quick menu with more functio -->
    <div class="user_div">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#righttab-statistics">Statistics</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#righttab-Result">Result</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#righttab-Students">Student</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#righttab-Todo">Todo</a></li>
        </ul>
        <div class="tab-content mt-3">
            <div class="tab-pane fade show active" id="righttab-statistics" role="tabpanel">
                <div class="card">
                    <div class="card-body">
                        <div>Total Revenue</div>
                        <div class="py-3 m-0 text-center h1 text-success">$79,452</div>
                        <div class="d-flex">
                            <span class="text-muted">Income</span>
                            <div class="ml-auto"><i class="fa fa-caret-up text-success"></i>4%</div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>$43,320</strong></div>
                                    <div class="float-right"><small class="text-muted">Bank of America</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-azure" role="progressbar" style="width: 87%" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li>
                                <div class="clearfix">
                                    <div class="float-left"><strong>$36,132</strong></div>
                                    <div class="float-right"><small class="text-muted">Wells Fargo</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-green" role="progressbar" style="width: 80%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-yellow"><i class="fa fa-users"></i> </div>
                        <div class="content">
                            <span>Total Student</span>
                            <h5 class="number mb-0">2,051</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-gray"><i class="fa fa-sitemap"></i> </div>
                        <div class="content">
                            <span>Department</span>
                            <h5 class="number mb-0">14</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-dark"><i class="fa fa-black-tie"></i> </div>
                        <div class="content">
                            <span>Total Teacher</span>
                            <h5 class="number mb-0">27</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-azure"><i class="fa fa-tags"></i> </div>
                        <div class="content">
                            <span>Total Courses</span>
                            <h5 class="number mb-0">31</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-pink"><i class="fa fa-credit-card"></i> </div>
                        <div class="content">
                            <span>Expense</span>
                            <h5 class="number mb-0">$7,254</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-green"><i class="fa fa-bank"></i> </div>
                        <div class="content">
                            <span>Total Income</span>
                            <h5 class="number mb-0">$27,852</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-cyan"><i class="fa fa-map-o"></i> </div>
                        <div class="content">
                            <span>Our Center</span>
                            <h5 class="number mb-0">52</h5>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body top_counter">
                        <div class="icon bg-indigo"><i class="fa fa-smile-o"></i> </div>
                        <div class="content">
                            <span>Smiley Face</span>
                            <h5 class="number mb-0">10K</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="righttab-Result" role="tabpanel">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Result 2019</h3>
                        <div class="card-options">
                            <a href="#"><i class="fa fa-file-excel-o" data-toggle="tooltip" title="Export Excel"></i></a>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>87%</strong></div>
                                    <div class="float-right"><small class="text-muted">Art & Design</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-azure" role="progressbar" style="width: 87%" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>80%</strong></div>
                                    <div class="float-right"><small class="text-muted">Fashion</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-green" role="progressbar" style="width: 80%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>63%</strong></div>
                                    <div class="float-right"><small class="text-muted">Sports Science</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-orange" role="progressbar" style="width: 63%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>91%</strong></div>
                                    <div class="float-right"><small class="text-muted">Computers</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-indigo" role="progressbar" style="width: 91%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li>
                                <div class="clearfix">
                                    <div class="float-left"><strong>35%</strong></div>
                                    <div class="float-right"><small class="text-muted">Biological Sciences</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-pink" role="progressbar" style="width: 35%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                        <div class="row text-center">
                            <div class="col-6 border-right">
                                <label class="mb-0">Total Pass</label>
                                <div class="font-20 font-weight-bold">1,052</div>
                            </div>
                            <div class="col-6">
                                <label class="mb-0">Total Fail</label>
                                <div class="font-20 font-weight-bold">198</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Result 2018</h3>
                        <div class="card-options">
                            <a href="#"><i class="fa fa-file-excel-o" data-toggle="tooltip" title="Export Excel"></i></a>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>80%</strong></div>
                                    <div class="float-right"><small class="text-muted">Fashion</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-green" role="progressbar" style="width: 80%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>87%</strong></div>
                                    <div class="float-right"><small class="text-muted">Art & Design</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-azure" role="progressbar" style="width: 87%" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>91%</strong></div>
                                    <div class="float-right"><small class="text-muted">Computers</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-indigo" role="progressbar" style="width: 91%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="clearfix">
                                    <div class="float-left"><strong>35%</strong></div>
                                    <div class="float-right"><small class="text-muted">Biological Sciences</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-pink" role="progressbar" style="width: 35%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                            <li>
                                <div class="clearfix">
                                    <div class="float-left"><strong>63%</strong></div>
                                    <div class="float-right"><small class="text-muted">Sports Science</small></div>
                                </div>
                                <div class="progress progress-xxs">
                                    <div class="progress-bar bg-orange" role="progressbar" style="width: 63%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                        <div class="row text-center">
                            <div class="col-6 border-right">
                                <label class="mb-0">Total Pass</label>
                                <div class="font-20 font-weight-bold">845</div>
                            </div>
                            <div class="col-6">
                                <label class="mb-0">Total Fail</label>
                                <div class="font-20 font-weight-bold">142</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="righttab-Students" role="tabpanel">
                <div id="users">
                    <div class="input-group mt-2 mb-2">
                        <input type="text" class="form-control search" placeholder="Search Student">
                    </div>
                    <ul class="right_chat list-unstyled list">
                        <li class="alfabet">A</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar1.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Abigail Churchill</span>
                                    <span class="message">Art & Design</span>
                                </div>
                            </a>                            
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar2.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Alexandra Carr</span>
                                    <span class="message">Fashion</span>
                                </div>
                            </a>                            
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar3.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Alison Berry</span>
                                    <span class="message">Fashion</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">B</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar4.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Bella Alan</span>
                                    <span class="message">Sports Science</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">C</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar5.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Caroline Alan</span>
                                    <span class="message">Sports Science</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar6.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Connor Campbell</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar7.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Charles Campbell</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">D</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar8.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Donna Hudson</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar9.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Dylan Jones</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">G</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar8.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Gordon Hudson</span>
                                    <span class="message">Sports Science</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar9.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Gabrielle Walker</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar10.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Gavin North</span>
                                    <span class="message">Computers</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">S</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar1.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Stephanie Hudson</span>
                                    <span class="message">Sports Science</span>
                                </div>
                            </a>
                        </li>
                        <li class="alfabet">W</li>
                        <li>
                            <a href="javascript:void(0);" class="media">
                                <img class="media-object" src="../assets/images/xs/avatar1.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">William Paige</span>
                                    <span class="message">Fashion</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="user_chatbody chat_app">
                    <div class="card-header bline pt-1 pl-0 pr-0">
                        <h3 class="card-title">Abigail Churchill <small>Online</small></h3>
                        <div class="card-options">
                            <a href="javascript:void(0)" class="p-1" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                <a class="dropdown-item active" href="#">Online</a>
                                <a class="dropdown-item" href="#">Away</a>
                                <a class="dropdown-item" href="#">Do not disturb</a>
                                <a class="dropdown-item" href="#">Invisible</a>
                            </div>
                            <a href="javascript:void(0)" class="p-1 chat_close"><i class="fa fa-close"></i></a>
                        </div>
                    </div>
                    <div class="chat_windows">
                        <ul class="mb-0">
                            <li class="other-message">
                                <img class="avatar mr-3" src="../assets/images/xs/avatar1.jpg" alt="avatar">
                                <div class="message">
                                    <p class="bg-light-blue">Are we meeting today?</p>
                                    <span class="time">10:10 AM, Today</span>
                                </div>
                            </li>    
                            <li class="other-message">
                                <img class="avatar mr-3" src="../assets/images/xs/avatar1.jpg" alt="avatar">
                                <div class="message">
                                    <p class="bg-light-blue">Hi Aiden, how are you? How is the project coming along?</p>
                                    <p class="bg-light-blue">Are we meeting today?</p>
                                    <span class="time">10:15 AM, Today</span>
                                </div>
                            </li>                                    
                            <li class="my-message">
                                <div class="message">
                                    <p class="bg-light-gray">Project has been already finished and I have results to show you.</p>
                                    <div class="file_folder">
                                        <a href="javascript:void(0);">
                                            <div class="icon">
                                                <i class="fa fa-file-excel-o text-success"></i>
                                            </div>
                                            <div class="file-name">
                                                <p class="mb-0 text-muted">Report2017.xls</p>
                                                <small>Size: 68KB</small>
                                            </div>
                                        </a>
                                    </div>
                                    <span class="time">10:17 AM, Today</span>
                                </div>
                            </li>
                            <li class="other-message">
                                <img class="avatar mr-3" src="../assets/images/xs/avatar1.jpg" alt="avatar">
                                <div class="message">
                                    <div class="media_img">
                                        <img src="../assets/images/gallery/1.jpg" class="w100 img-thumbnail" alt="">
                                        <img src="../assets/images/gallery/2.jpg" class="w100 img-thumbnail" alt="">
                                    </div>
                                    <span class="time">10:15 AM, Today</span>
                                </div>
                            </li> 
                            <li class="other-message">
                                <img class="avatar mr-3" src="../assets/images/xs/avatar1.jpg" alt="avatar">
                                <div class="message">                                            
                                    <p class="bg-light-blue">Are we meeting today I have results?</p>
                                    <span class="time">10:18 AM, Today</span>
                                </div>
                            </li>
                            <li class="my-message">
                                <div class="message">
                                    <p class="bg-light-gray">Well we have good budget for the project</p>
                                    <span class="time">10:25 AM, Today</span>
                                </div>
                            </li>
                        </ul>
                        <div class="chat-message clearfix">
                            <a href="javascript:void(0);"><i class="icon-camera"></i></a>
                            <a href="javascript:void(0);"><i class="icon-camcorder"></i></a>
                            <a href="javascript:void(0);"><i class="icon-paper-plane"></i></a>
                            <div class="input-group mb-0">
                                <input type="text" class="form-control" placeholder="Enter text here...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="righttab-Todo" role="tabpanel">
                <ul class="list-unstyled mb-0 todo_list">
                    <li>
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                            <span class="custom-control-label">Report Panel Usag</span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
                            <span class="custom-control-label">Report Panel Usag</span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                            <span class="custom-control-label">New logo design for Angular Admin</span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
                            <span class="custom-control-label">Design PSD files for Angular Admin</span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                            <span class="custom-control-label">New logo design for Angular Admin</span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Start Main leftbar navigation -->
    <div id="left-sidebar" class="sidebar">
        <h5 class="brand-name">Ericsson<a href="javascript:void(0)" class="menu_option float-right"><i class="icon-grid font-16" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu-uni">University</a></li>
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#menu-admin">Admin</a></li>
        </ul>
        <div class="tab-content mt-3">
            <div class="tab-pane fade" id="menu-uni" role="tabpanel">
                <nav class="sidebar-nav">
                    <ul class="metismenu">
                        <li><a href="index.html"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
                        <li><a href="professors.html"><i class="fa fa-black-tie"></i><span>Professors</span></a></li>
                        <li><a href="staff.html"><i class="fa fa-user-circle-o"></i><span>Staff</span></a></li>
                        <li><a href="students.html"><i class="fa fa-users"></i><span>Students</span></a></li>
                        <li><a href="departments.html"><i class="fa fa-users"></i><span>Departments</span></a></li>
                        <li><a href="courses.html"><i class="fa fa-graduation-cap"></i><span>Courses</span></a></li>                        
                        <li><a href="library.html"><i class="fa fa-book"></i><span>Library</span></a></li>
                        <li><a href="holiday.html"><i class="fa fa-bullhorn"></i><span>Holiday</span></a></li>
                        <li class="g_heading">Extra</li>
                        <li><a href="events.html"><i class="fa fa-calendar"></i><span>Calender</span></a></li>
                        <li><a href="app-chat.html"><i class="fa fa-comments-o"></i><span>Chat App</span></a></li>
                        <li><a href="app-contact.html"><i class="fa fa-address-book"></i><span>Contact</span></a></li>
                        <li><a href="app-filemanager.html"><i class="fa fa-folder"></i><span>FileManager</span></a></li>
                        <li><a href="our-centres.html"><i class="fa fa-map"></i><span>OurCentres</span></a></li>
                        <li><a href="gallery.html"><i class="fa fa-camera-retro"></i><span>Gallery</span></a></li>
                    </ul>
                </nav>
            </div>
            <div class="tab-pane fade show active" id="menu-admin" role="tabpanel">
                <nav class="sidebar-nav">
                    <ul class="metismenu">
                   
                    	<li><a href="university.jsp"><i class="fa fa-graduation-cap brand-logo"></i><span>University</span></a></li>
                        <li><a ><i class="fa fa-graduation-cap brand-logo"></i><span>College</span></a></li>
                        <li><a href="payments.html"><i class="fa fa-credit-card"></i><span>Payments</span></a></li>
                        <li><a href="noticeboard.html"><i class="fa fa-dashboard"></i><span>Noticeboard</span></a></li>
                        <li><a href="taskboard.html"><i class="fa fa-list-ul"></i><span>Taskboard</span></a></li>
                        <li><a href="hostel.html"><i class="fa fa-bed"></i><span>Hostel</span></a></li>
                        <li><a href="transport.html"><i class="fa fa-truck"></i><span>Transport</span></a></li>
                        <li><a href="attendance.html"><i class="fa fa-calendar-check-o"></i><span>Attendance</span></a></li>
                        <li><a href="leave.html"><i class="fa fa-flag"></i><span>Leave</span></a></li>
                        <li class="active"><a href="setting.html"><i class="fa fa-gear"></i><span>Settings</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- Start project content area -->
    <div class="page">
        <!-- Start Page header -->
        <div class="section-body" id="page_top" >
            <div class="container-fluid">
                <div class="page-header">
                    <div class="left">                       
                   
                    <ul class="nav nav-tabs page-header-tab">
                 <li  style="font-size:40px;text-align:center;"><a href="university.jsp"><i class="fa fa-graduation-cap brand-logo" ></i><span style="font-size:40px;">College</span></a></li>
                        
                        
                    </ul>
                    </div>
                    <div class="right">
                        
                        <div class="notification d-flex">
                           
                            <div class="dropdown d-flex">
                       
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge badge-success nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="right_chat list-unstyled w350 p-0">
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object" src="../assets/images/xs/avatar4.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Donald Gardner</span>
                                                    <div class="message">It is a long established fact that a reader</div>
                                                    <small>11 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="../assets/images/xs/avatar5.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Wendy Keen</span>
                                                    <div class="message">There are many variations of passages of Lorem Ipsum</div>
                                                    <small>18 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>
                                        <li class="offline">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="../assets/images/xs/avatar2.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Matt Rosales</span>
                                                    <div class="message">Contrary to popular belief, Lorem Ipsum is not simply</div>
                                                    <small>27 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="../assets/images/xs/avatar3.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Phillip Smith</span>
                                                    <div class="message">It has roots in a piece of classical Latin literature from 45 BC</div>
                                                    <small>33 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>                        
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Ken Smith all as read</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1" data-toggle="dropdown"><i class="fa fa-bell"></i><span class="badge badge-primary nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="list-unstyled feeds_widget">
                                        <li>
                                            <div class="feeds-left">
                                                <span class="avatar avatar-blue"><i class="fa fa-check"></i></span>
                                            </div>
                                            <div class="feeds-body ml-3">
                                                <p class="text-muted mb-0">Campaign <strong class="text-blue font-weight-bold">Holiday</strong> is nearly reach budget limit.</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left">
                                                <span class="avatar avatar-green"><i class="fa fa-user"></i></span>
                                            </div>
                                            <div class="feeds-body ml-3">
                                                <p class="text-muted mb-0">New admission <strong class="text-green font-weight-bold">32</strong> in computer department.</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left">
                                                <span class="avatar avatar-red"><i class="fa fa-info"></i></span>
                                            </div>
                                            <div class="feeds-body ml-3">
                                                <p class="text-muted mb-0">6th sem result <strong class="text-red font-weight-bold">67%</strong> in computer department.</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left">
                                                <span class="avatar avatar-azure"><i class="fa fa-thumbs-o-up"></i></span>
                                            </div>
                                            <div class="feeds-body ml-3">
                                                <p class="text-muted mb-0">New Feedback <strong class="text-azure font-weight-bold">53</strong> for university assessment.</p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Ken Smith all as read</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a href="javascript:void(0)" class="chip ml-3" data-toggle="dropdown">
                                    <span class="avatar" style="background-image: url(../assets/images/xs/avatar5.jpg)"></span> George</a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <a class="dropdown-item" href="page-profile.html"><i class="dropdown-icon fe fe-user"></i> Profile</a>
                                    <a class="dropdown-item" href="app-setting.html"><i class="dropdown-icon fe fe-settings"></i> Settings</a>
                                    <a class="dropdown-item" href="app-email.html"><span class="float-right"><span class="badge badge-primary">6</span></span><i class="dropdown-icon fe fe-mail"></i> Inbox</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-send"></i> Message</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-help-circle"></i> Need help?</a>
                                    <a class="dropdown-item" href="login.html"><i class="dropdown-icon fe fe-log-out"></i> Sign out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Page title and tab -->
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center ">
                   
                   <!--  <ul class="nav nav-tabs page-header-tab">
                 <li  style="font-size:40px;text-align:center;"><a href="university.jsp"><i class="fa fa-graduation-cap brand-logo" ></i><span style="font-size:40px;">University</span></a></li>
                        --> 
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane active show" id="Company_Settings">
                        <div class="card">
                            
                            <div class="card-body">
                                <form action="../College_Data" method="post">
                                		<div class="left">                       
                   
			                    <ul class="nav nav-tabs page-header-tab">
			                 <li  style="font-size:20px;text-align:center;"><a href="university.jsp"><i class="fa fa-graduation-cap brand-logo" ></i><span style="font-size:20px;text-align: center;">College Information</span></a></li>    
			                    </ul>
			                    </div>
			                    <hr style="height:1px;border-width:0;color:gray;background-color:gray">
                                    <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>College Registration <span class="text-danger">*</span></label>
                                                <input class="form-control" type="text" placeholder="Enter Registration Number" required="required"
                                                name="creg">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>College Name <span class="text-danger">*</span></label>
                                                <input class="form-control" type="text" name="cname" placeholder="Enter University Name" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Dean Name <span class="text-danger">*</span></label>
                                                <input class="form-control" name="dean"  type="text" placeholder="Enter Dean Name" minlength="20" maxlength="20" required 
                                                >
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>College Address</label>
                                                <textarea class="form-control" name="cadrs" placeholder="44 Shirley Ave. West Chicago, IL 60185" aria-label="With textarea" required="required"></textarea>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>College type</label>
                                                	<select class="form-control" name="ctype" required="required">
                                                		<option value="">---Please Select---</option>
                                                		<%
															try {
																Class.forName("com.mysql.jdbc.Driver");
																Connection con = DriverManager.getConnection(
																		"jdbc:mysql://sql178.main-hosting.eu:3306/u248334632_Hotel", "u248334632_Hotel", "CBCsumit@24");
																Statement stmt = con.createStatement();
																String query = "select * from type";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
                                                	</select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>College Category</label>
                                                	<select class="form-control" name="cctgry" required="required">
                                                	<option value="">---Please Select---</option>
                                                		<%
															try {
																Class.forName("com.mysql.jdbc.Driver");
																Connection con = DriverManager.getConnection(
																		"jdbc:mysql://sql178.main-hosting.eu:3306/u248334632_Hotel", "u248334632_Hotel", "CBCsumit@24");
																Statement stmt = con.createStatement();
																String query = "select * from category";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
                                                	</select>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Contact Number <span class="text-danger">*</span></label>
                                                <input class="form-control" type="text" minlength="10"
                                                maxlength="11" name="cnum" required="required" placeholder="Enter Number"
                                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            </div>
                                        </div>
                                        <!-- <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Alternate Number <span class="text-danger">*</span></label>
                                                <input class="form-control" name="unum2"  type="text" placeholder="0123-1234567" minlength="12" maxlength="12" required
                                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            </div>
                                        </div> -->
                                        
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Email <span class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="icon-envelope"></i></span>
                                                    </div>
                                                    <input type="email" name="cemail" class="form-control" placeholder="abc@example.com" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Website Url</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="icon-globe"></i></span>
                                                    </div>
                                                    <input type="text" name="curl" class="form-control" placeholder="http://www.">
                                                </div>
                                            </div>
                                        </div>
                                    
                                   
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Country</label>
                                                <select class="form-control" name="cntry" disabled>
                                                   <option value="india" >india</option>
                                                   </select> 
                                            </div>
                                        </div>                                
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>State</label>
                                                <select class="form-control" name="state" onchange="print_city('state', this.selectedIndex);" id="sts" name ="stt" class="form-control" required></select>
												
											<script language="javascript">print_state("sts");</script>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>City</label>
                                                <select id ="state" name="city" class="form-control" required></select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Course</label>
                                                <select id ="course" name="course" class="form-control" required></select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <input class="form-control" placeholder="Enter Area Code" type="text"
                                                maxlength="6" minlength="6" name="pincode" required="required"
                                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            </div>
                                        </div>
                                    
                                    
                                       <!--  <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input class="form-control" value="818-978-7102" type="text">
                                            </div>
                                        </div> -->
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Fax</label>
                                                <input class="form-control" name="faxnum" value="818-978-7102" type="text">
                                            </div>
                                        </div>
                                   
                                    <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Quota</label>
                                                	<select class="form-control" name="quota" required="required">
                                                	<option value="">---Please Select---</option>
                                                		<%
															try {
																Class.forName("com.mysql.jdbc.Driver");
																Connection con = DriverManager.getConnection(
																		"jdbc:mysql://sql178.main-hosting.eu:3306/u248334632_Hotel", "u248334632_Hotel", "CBCsumit@24");
																Statement stmt = con.createStatement();
																String query = "select * from quota";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
                                                	</select>
                                            </div>
                                        </div>
                                        </div>
                                    <hr style="height:1px;border-width:0;color:gray;background-color:gray">
                                    <div class="left">                       
                   
			                    <ul class="nav nav-tabs page-header-tab">
			                 <li  style="font-size:20px;text-align:center;"><i class="fa fa-phone" ></i><span style="font-size:20px;text-align: center;">&nbsp;Contact Information</span></li>    
			                    </ul>
			                    </div>
                                    
                                   
                                    
                                    
                                    
                                    
                                    <br>
<div class="row">

<div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Registrar Name <span class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="icon-envelope"></i></span>
                                                    </div>
                                                    <input type="text" name="regname" class="form-control" placeholder="Enter Registrar Name" 
                                                    required="required" maxlength="20">
                                                </div>
                                            </div>
                                        </div>
 <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Contact Name <span class="text-danger">*</span></label>
                                                <input class="form-control" type="text" placeholder="Enter Contact Name"
                                                minlength="7" maxlength="20" name="contact_name" required="required">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Contact Number </label>
                                                <input class="form-control" type="text" minlength="10"
                                                maxlength="11" required="required" name="contact_num" placeholder="Enter Number"
                                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Designation</label>
                                                <input type="text" class="form-control" name="desig" placeholder="Enter Designation" aria-label="With textarea" required="required">
                                            </div>
                                        </div>
                                        
                                       
  </div>                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                     <div class="row">
                                        <div class="col-sm-12 text-right m-t-20">
                                            <button type="button" class="btn btn-primary">SAVE</button>
                                        </div>
                                    </div>
                                    
                                    
                                </form>
                            </div>
                        </div>                        
                    </div>
                    
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>
        <!-- Start main footer -->
        <div class="section-body">
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            Copyright © 2019 <a href="https://themeforest.net/user/puffintheme/portfolio">PuffinTheme</a>.
                        </div>
                        <div class="col-md-6 col-sm-12 text-md-right">
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item"><a href="../doc/index.html">Documentation</a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)">FAQ</a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="btn btn-outline-primary btn-sm">Buy Now</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>    
</div>

<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start Plugin Js -->
<script src="../assets/plugins/dropify/js/dropify.min.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>
<script src="assets/js/form/dropify.js"></script>
</body>
</html>
