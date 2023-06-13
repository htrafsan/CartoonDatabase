/*Create & Use The Database*/

create database Cartoon
GO
use Cartoon
GO


/*Create Tables*/

create table [dbo].[Genre](
GenreId char(10) primary key,
GenreType varchar(30)
)
GO

create table [dbo].[Rating](
RatingId int primary key,
Content char(25)
)
GO

create table [dbo].[Language](
LanguageId int primary key,
LanguageName varchar(20)
)
GO

create table [dbo].[Broadcast](
BroadcastId int primary key,
Broadcaster varchar(75),
)
GO

create table [dbo].[Writer](
WriterId int primary key,
WriterName varchar(90),
WriterGender char(6)
)
GO

create table [dbo].[Country](
CountryId int primary key,
CountryName varchar(75)
)
GO

create table [dbo].[Studio](
StudioId int primary key,
Location int foreign key references [dbo].[Country] (CountryId),
StudioName varchar(90),
)
GO

create table [dbo].[Main](
CartoonId int,
CartoonName nvarchar(255),
ReleaseYear int,
Runtime int,
GenreId char(10) foreign key references [dbo].[Genre] (GenreId),
RatingId int foreign key references [dbo].[Rating] (RatingId),
LanguageId int foreign key references [dbo].[Language] (LanguageId),
BroadcastId int foreign key references [dbo].[Broadcast] (BroadcastId),
WriterId int foreign key references [dbo].[Writer] (WriterId),
StudioId int foreign key references [dbo].[Studio] (StudioId),
Plot varchar(max),
constraint [pk_Main] primary key CLUSTERED ([CartoonID] ASC)
)
GO

create table [dbo].[Character](
CharacterId int primary key ,
CharacterCartoonId int foreign key references [dbo].[Main] (CartoonId),
CharacterName char(90)
)
GO

/*Insert Values into Tables*/

insert into [dbo].[Genre]
values('1001','Abstract
'),('1002','Action
'),('1003','Comedy
'),('1004','Crossover
'),('1005','Drama
'),('1006','Educational
'),('1007','Family
'),('1008','Horror
'),('1009','Material Arts
'),('1010','Musical
'),('1011','Mystery
'),('1012','Religious
'),('1013','Romance
'),('1014','Science Fiction
'),('1015','Sports
'),('1016','Thriller
'),('1017','Western
'),('1018','Web
'),('1019','Adventure
'),('1020','Fantasy
'),('1021','Documentary
'),('1022','Short
'),('1023','Biography
'),('1024','Reality
'),('1025','History
'),('1026','War
'),('1027','Western
'),('1028','Crime
'),('1029','News
'),('1030','Social
'),('1031','Adult
'),('1032','Game-Show');
GO

insert into [dbo].[Rating]
values('2001','TV-Y  
'),('2002','TV-Y7  
'),('2003','TV-G  
'),('2004','TV-PG  
'),('2005','TV-14  
'),('2006','TV-MA');
GO

insert into [dbo].[Language]
values('3001','Afrikaans
'),('3002','Albanian
'),('3003','Amharic
'),('3004','Arabic
'),('3005','Armenian
'),('3006','Azerbaijani
'),('3007','Basque
'),('3008','Belarusian
'),('3009','Bangla
'),('3010','Bosnian
'),('3011','Bulgarian
'),('3012','Catalan
'),('3013','Cebuano
'),('3014','Chichewa
'),('3015','Chinese
'),('3016','Corsican
'),('3017','Croatian
'),('3018','Czech
'),('3019','Danish
'),('3020','Dutch
'),('3021','English
'),('3022','Esperanto
'),('3023','Estonian
'),('3024','Filipino
'),('3025','Finnish
'),('3026','French
'),('3027','Frisian
'),('3028','Galician
'),('3029','Georgian
'),('3030','German
'),('3031','Greek
'),('3032','Gujarati
'),('3033','Haitian Creole
'),('3034','Hausa
'),('3035','Hawaiian
'),('3036','Hebrew
'),('3037','Hindi
'),('3038','Hmong
'),('3039','Hungarian
'),('3040','Icelandic
'),('3041','Igbo
'),('3042','Indonesian
'),('3043','Irish
'),('3044','Italian
'),('3045','Japanese
'),('3046','Javanese
'),('3047','Kannada
'),('3048','Kazakh
'),('3049','Khmer
'),('3050','Korean
'),('3051','Kurdish
'),('3052','Lao
'),('3053','Latin
'),('3054','Latvian
'),('3055','Lithuanian
'),('3056','Luxembourgish
'),('3057','Macedonian
'),('3058','Malagasy
'),('3059','Malay
'),('3060','Malayalam
'),('3061','Maltese
'),('3062','Mandarin
'),('3063','Maori
'),('3064','Marathi
'),('3065','Mongolian
'),('3066','Burmese
'),('3067','Nepali
'),('3068','Norwegian
'),('3069','Pashto
'),('3070','Persian
'),('3071','Polish
'),('3072','Portuguese
'),('3073','Punjabi
'),('3074','Romanian
'),('3075','Russian
'),('3076','Samoan
'),('3077','Scots Gaelic
'),('3078','Serbian
'),('3079','Sesotho
'),('3080','Shona
'),('3081','Sindhi
'),('3082','Sinhala
'),('3083','Slovak
'),('3084','Slovenian
'),('3085','Somali
'),('3086','Spanish
'),('3087','Sundanese
'),('3088','Swahili
'),('3089','Swedish
'),('3090','Tajik
'),('3091','Tamil
'),('3092','Telugu
'),('3093','Thai
'),('3094','Turkish
'),('3095','Ukrainian
'),('3096','Urdu
'),('3097','Uzbek
'),('3098','Vietnamese
'),('3099','Welsh
'),('3100','Xhosa
'),('3101','Yiddish
'),('3102','Yoruba
'),('3103','Zulu');
GO

insert into [dbo].[Broadcast]
values('4001','ABC Kids
'),('4002','Boomerang
'),('4003','Cartoon Network
'),('4004','Discovery Kids
'),('4005','Disney Junior
'),('4006','Disney Channel
'),('4007','Disney XD
'),('4008','Nickelodeon
'),('4009','Nick Jr
'),('4010','Animax
'),('4011','Baby TV
'),('4012','Hungama
'),('4013','Marvel HQ
'),('4014','Pogo
'),('4015','Sony Yay
'),('4016','Teen Nick
'),('4017','Toonami
'),('4018','Toon Disney
'),('4019','Comedy Central
'),('4020','Toonivrse
'),('4021','True Sparks
'),('4022','BBC Kids
'),('4023','CBC Kids
'),('4024','Family
'),('4025','Family Jr
'),('4026','Vrak
'),('4027','YTV
'),('4028','Cbeebies
'),('4029','Jetix
'),('4030','SpaceToon
'),('4031','ZooMoo
'),('4032','Jojo
'),('4033','TRT Cocuk
'),('4034','Smart Cocuk
'),('4035','Nick Jr Too
'),('4036','Nick Toons
'),('4037','Pop
'),('4038','Pop Girl
'),('4039','Pop Max
'),('4040','Cartoonito
'),('4041','The Children-s Channel
'),('4042','Fox Kids
'),('4043','Universal Kids
'),('4044','PBS Kids
'),('4045','UPN Kids
'),('4046','Halla Bol! Kids
'),('4047','Discovery Familia
'),('4048','Vme Kids
'),('4049','Nick Music
'),('4050','Boing
'),('4051','DreamWorks Channel
'),('4052','Etoons
'),('4053','Junior
'),('4054','Minimax
'),('4055','Minimini
'),('4056','Canal J
'),('4057','TV2
'),('4058','TBS
'),('4059','CBS
'),('4060','Sonic
'),('4061','TV Asahi
'),('4062','Netflix Originals');
GO

insert into [dbo].[Writer]
values('5001','William Hanna','Male
'),('5002','E. C. Segar','Male
'),('5003','Rudolf Ising','Male
'),('5004','Homer Brightman','Male
'),('5005','Mike Young','Male
'),('5006',' Kari Juusonen','Male
'),('5007','Rudolph Dirks','Male
'),('5008','Michael Hegner','Male
'),('5009','Hisashi Inoue','Male
'),('5010','Seth MacFarlane','Male
'),('5011','Niraj Vikram','Male
'),('5012','Donovan Cook','Male
'),('5013','Rich Hogan','Male
'),('5014','Flemming Quist Møller','Male
'),('5015','Tex Avery','Male
'),('5016','Daniel Chong','Male
'),('5017','Akshay Sanjeev Chavan','Male
'),('5018','Ram Mohan','Male
'),('5019','Fujimoto Hiroshi','Male
'),('5020','Yoshito Usui','Male
'),('5021','Jeffrey Gatrall','Male
'),('5022','Mikael Hed','Male
'),('5023','Mark Edwards ','Male
'),('5024','Dan Povenmire','Male
'),('5025','Walt Disney','Male
'),('5026','Thomas Pugsley','Male
'),('5027','Oleg Kuzovkov','Male
'),('5028','Craig McCracken','Male
'),('5029','Tery Parker','Male
'),('5030','Raphael Bob-Waksberg','Male
'),('5031','Stephen Hillenburg','Male');
GO

insert into [dbo].[Country]
values('6001','Abkhazia
'),('6002','Afghanistan
'),('6003','Albania
'),('6004','Algeria
'),('6005','American Samoa 
'),('6006','Andorra
'),('6007','Angola
'),('6008','Anguilla 
'),('6009','Antigua & Barbuda
'),('6010','Argentina
'),('6011','Armenia
'),('6012','Artsakh
'),('6013','Aruba
'),('6014','Australia
'),('6015','Austria
'),('6016','Azerbaijan
'),('6017','Bahamas
'),('6018','Bahrain
'),('6019','Bangladesh
'),('6020','Barbados
'),('6021','Belarus
'),('6022','Belgium
'),('6023','Belize
'),('6024','Benin
'),('6025','Bermuda
'),('6026','Bhutan
'),('6027','Bolivia 
'),('6028','Bosnia and Herzegovina
'),('6029','Botswana
'),('6030','Brazil
'),('6031','Brunei 
'),('6032','Bulgaria
'),('6033','Burkina Faso
'),('6034','Burundi
'),('6035','Cambodia
'),('6036','Cameroon
'),('6037','Canada
'),('6038','Cape Verde
'),('6039','Cayman Island
'),('6040','Central African Republic
'),('6041','Chad
'),('6042','Chile
'),('6043','China
'),('6044','Christmas island
'),('6045','Cocos
'),('6046','Colombia
'),('6047','Comoros
'),('6048','Congo
'),('6049','Cook Islands
'),('6050','Costa Rica
'),('6051','Croatia
'),('6052','Cuba
'),('6053','Curacao
'),('6054','Cyprus
'),('6055','Czech
'),('6056','Democratic Republic Congo
'),('6057','Denmark
'),('6058','Dijibouti
'),('6059','Dominica
'),('6060','Dominica Republic
'),('6061','Dominica Republic Congo
'),('6062','East Timor
'),('6063','Ecuador
'),('6064','Egypt
'),('6065','El Salvador
'),('6066','Equatorial Guinea
'),('6067','Eritrea
'),('6068','Estonia
'),('6069','Eswatini
'),('6070','Ethiopia
'),('6071','F.S. Micronesia
'),('6072','Falkland Islands
'),('6073','Faroe Islands
'),('6074','Fiji
'),('6075','Finland
'),('6076','France
'),('6077','French Polynesia 
'),('6078','Gabon
'),('6079','Gambia
'),('6080','Georgia
'),('6081','Germany
'),('6082','Ghana
'),('6083','Gibraltar
'),('6084','Greece
'),('6085','Greenland
'),('6086','Grenada
'),('6087','Guam
'),('6088','Guatemala
'),('6089','Guernsey
'),('6090','Guinea
'),('6091','Guinea-Bissau
'),('6092','Guyana
'),('6093','Haiti
'),('6094','Hondurus
'),('6095','Hong Kong
'),('6096','Hungary
'),('6097','Iceland
'),('6098','India
'),('6099','Indonesia
'),('6100','Iran
'),('6101','Iraq
'),('6102','Ireland
'),('6103','Isle of Man
'),('6104','Israel
'),('6105','Italy
'),('6106','Ivory Coast
'),('6107','Jamaica
'),('6108','Japan
'),('6109','Jersey
'),('6110','Jordan
'),('6111','Kazakhstan
'),('6112','Kenya
'),('6113','Kiribati
'),('6114','Kosovo
'),('6115','Kuwait
'),('6116','Kyrgyzstan
'),('6117','Laos
'),('6118','Latvia
'),('6119','Lebanon
'),('6120','Lesotho
'),('6121','Liberia
'),('6122','Libya
'),('6123','Liechtenstein
'),('6124','Lithuania
'),('6125','Luxembourg
'),('6126','Macau 
'),('6127','Madagascar
'),('6128','Malawi
'),('6129','Malaysia
'),('6130','Maldives
'),('6131','Mali
'),('6132','Malta
'),('6133','Marshall Islands
'),('6134','Mauritania
'),('6135','Mauritius
'),('6136','Mexico
'),('6137','Moldova
'),('6138','Monaco
'),('6139','Mongolia
'),('6140','Montenegro
'),('6141','Montserrat
'),('6142','Morocco
'),('6143','Mozambique
'),('6144','Myanmar
'),('6145','Namibia
'),('6146','Nauru
'),('6147','Nepal
'),('6148','Netherlands
'),('6149','New Caledonia
'),('6150','New Zealand
'),('6151','Nicaragua
'),('6152','Niger
'),('6153','Nigeria
'),('6154','Niue
'),('6155','Norfolk Island 
'),('6156','North Korea
'),('6157','North Macedonia
'),('6158','Northern Cyprus
'),('6159','Northern Mariana Islands
'),('6160','Norway
'),('6161','Oman
'),('6162','Pakistan
'),('6163','Palau
'),('6164','Palestine
'),('6165','Panama
'),('6166','Papua New Guinea
'),('6167','Paraguay
'),('6168','Peru
'),('6169','Philippines
'),('6170','Pitcairn Islands
'),('6171','Poland
'),('6172','Portugal
'),('6173','Puerto Rico 
'),('6174','Qatar
'),('6175','Romania
'),('6176','Russia
'),('6177','Rwanda
'),('6178','Saint Barthélemy
'),('6179','Saint Helena
'),('6180','Saint Kitts and Nevis
'),('6181','Saint Lucia
'),('6182','Saint Martin
'),('6183','Saint Pierre and Miquelon
'),('6184','Saint Vincent and the Grenadines
'),('6185','Samoa
'),('6186','San Marino
'),('6187','Sao Tome and Príncipe
'),('6188','Saudi Arabia
'),('6189','Senegal
'),('6190','Serbia
'),('6191','Seychelles
'),('6192','Sierra Leone
'),('6193','Singapore
'),('6194','Sint Maarten
'),('6195','Slovakia
'),('6196','Slovenia
'),('6197','Solomon Islands
'),('6198','Somalia
'),('6199','South Africa
'),('6200','South Korea
'),('6201','South Ossetia
'),('6202','South Sudan
'),('6203','Spain
'),('6204','Sri Lanka
'),('6205','Sudan
'),('6206','Suriname
'),('6207','Sweden
'),('6208','Switzerland
'),('6209','Syria
'),('6210','Taiwan
'),('6211','Tajikistan
'),('6212','Tanzania
'),('6213','Thailand
'),('6214','Togo
'),('6215','Tokelau
'),('6216','Tonga
'),('6217','Transnistria
'),('6218','Trinidad and Tobago
'),('6219','Tunisia
'),('6220','Turkey
'),('6221','Turkmenistan
'),('6222','Tuvalu
'),('6223','Turks and Caicos Islands 
'),('6224','U.S . Virgin Islands
'),('6225','Uganda
'),('6226','Ukraine
'),('6227','United Arab Emirates
'),('6228','United Kingdom
'),('6229','United States of America
'),('6230','Uruguay
'),('6231','Uzbekistan
'),('6232','Vanuatu
'),('6233','Vatican City
'),('6234','Venezuela
'),('6235','Vietnam
'),('6236','Wallis and Futuna
'),('6237','Western Sahara
'),('6238','Yemen
'),('6239','Zambia
'),('6240','Zimbabwe');
GO

insert into [dbo].[Studio]
values('7001','6229','20th Century Fox
'),('7002','6229','Hanna-Barbera
'),('7003','6229','Paramount Pictures
'),('7004','6229','Metro-Goldwyn-Mayer
'),('7005','6229','Warner Bros-
'),('7006','6229','Cartoon Network Studio
'),('7007','6229','Universal Studios
'),('7008','6229','Columbia Pictures
'),('7009','6229','Disney Pixar
'),('7010','6229','Walt Disney Studios
'),('7011','6229','Nickelodeon Studios
'),('7012','6229','Dreamworks
'),('7013','6098','Viacom 18 Motion Pictures
'),('7014','6229','A Squared Entertainment
'),('7015','6229','Allspark Animation
'),('7016','6229','Animax Entertainment
'),('7017','6229','Ace & Son
'),('7018','6057','A-Film Production
'),('7019','6229','Worker Studio
'),('7020','6229','WildBrain
'),('7021','6229','Williams Street Studios
'),('7022','6229','Vanguard Animation
'),('7023','6229','Titmouse
'),('7024','6229','Splash Entertainment
'),('7025','6229','Tau Films
'),('7026','6229','The Animation Picture Company
'),('7027','6229','Stretch Films
'),('7028','6229','Spümtwo
'),('7029','6229','Animusic
'),('7030','6229','Augenblick Studios
'),('7031','6229','Bagdasarian Productions
'),('7032','6229','Bent Image Lab
'),('7033','6229','Bento Box Entertainment
'),('7034','6229','Big Idea Entertainment
'),('7035','6229','Blue Sky Studios
'),('7036','6229','Blur Studio
'),('7037','6229','Bullwinkle Studios
'),('7038','6229','Buzzco Associates
'),('7039','6229','Cartoon Pizza
'),('7040','6229','Charlex
'),('7041','6229','Creative Capers Entertainment
'),('7042','6229','The Curiosity Company
'),('7043','6229','Digital Domain
'),('7044','6229','Floyd County Productions
'),('7045','6229','Roadside Attractions
'),('7046','6229','Eric Miller Animation Studios
'),('7047','6229','Exceptional Minds
'),('7048','6229','Felix the Cat Productions
'),('7049','6229','Film Roman, Inc-
'),('7050','6229','Frederator Studios
'),('7051','6229','Fuzzy Door Productions
'),('7052','6229','Illumination
'),('7053','6229','Industrial Light & Magic
'),('7054','6229','J-J- Sedelmaier Productions, Inc-
'),('7055','6229','Janimation
'),('7056','6229','JibJab
'),('7057','6229','John Lemmon Films
'),('7058','6229','Klasky Csupo
'),('7059','6229','Kurtz & Friends
'),('7060','6229','LAIKA
'),('7061','6229','Lucasfilm Animation
'),('7062','6229','Marvel Animation
'),('7063','6229','Mirari Films
'),('7064','6229','Mondo Media
'),('7065','6229','MTV Animation
'),('7066','6229','Nathan Love
'),('7067','6229','Powerhouse Animation Studios, Inc-
'),('7068','6229','Premavision/Clokey Productions
'),('7069','6229','Omation Animation Studio
'),('7070','6229','Piranha NYC
'),('7071','6229','Savage Studios Ltd-
'),('7072','6229','Shademaker Productions
'),('7073','6229','ShadowMachine
'),('7074','6229','Six Point Harness
'),('7075','6229','Psyop
'),('7076','6229','Radicial Axis
'),('7077','6229','Reel FX Creative Studios
'),('7078','6229','Renegade Animation
'),('7079','6229','Rhythm and Hues Studios
'),('7080','6229','RingTales
'),('7081','6229','Rooster Teeth
'),('7082','6228','Fine Arts Films
'),('7083','6228','Aardman Animations
'),('7084','6228','Blue-Zoo
'),('7085','6228','Bolexbrothers
'),('7086','6228','Collingwood & Co-
'),('7087','6228','Lambie-Nairn
'),('7088','6228','Littlenobody
'),('7089','6228','Locksmith Animation
'),('7090','6228','Smallfilms
'),('7091','6228','Spy Pictures
'),('7092','6210','Cuckoos Nest Studio
'),('7093','6210','Hong Ying Animation
'),('7094','6210','Wang Film Productions
'),('7095','6203','BRB International
'),('7096','6203','Dygra Films
'),('7097','6203','Ilion Animation Studios
'),('7098','6203','Kandor Graphics
'),('7099','6203','Zinkia Entertainment
'),('7100','6200','G&G Entertainment
'),('7101','6200','AKOM
'),('7102','6200','Dong Woo Animation
'),('7103','6200','DR Movie
'),('7104','6200','Hanho Heung-Up
'),('7105','6200','Koko Enterprises
'),('7106','6200','Plus One Animation
'),('7107','6200','Saerom Animation
'),('7108','6200','Studio Mir
'),('7109','6200','Sunwoo Entertainment
'),('7110','6199','Clockwork Zoo Animation
'),('7111','6199','Triggerfish Animation Studios
'),('7112','6199','Xyzoo Animation
'),('7113','6108','8-Bit
'),('7114','6108','A-1 Pictures
'),('7115','6108','A-C-G-T
'),('7116','6108','A-P-P-P-
'),('7117','6108','Ajia-do
'),('7118','6108','AIC
'),('7119','6108','Arms Corporation
'),('7120','6108','Artland
'),('7121','6108','Asahi Production
'),('7122','6108','Bee Train
'),('7123','6108','BONES
'),('7124','6108','Brain-s Base
'),('7125','6108','C2C
'),('7126','6108','Daume
'),('7127','6108','David Production
'),('7128','6108','Digital Frontier
'),('7129','6108','Diomedea
'),('7130','6108','Dogakobo
'),('7131','6108','Eiken
'),('7132','6108','Feel
'),('7133','6108','Gainax
'),('7134','6229','Tornante Company
'),('7135','6108','Gonzo
'),('7136','6108','Hoods Entertainment
'),('7137','6108','Imagin
'),('7138','6108','J-C-Staff
'),('7139','6108','Khara
'),('7140','6108','Kinema Citrus
'),('7141','6108','Kyoto Animation
'),('7142','6108','Lay-duce
'),('7143','6108','Lerche
'),('7144','6108','Liden Films
'),('7145','6108','Madhouse
'),('7146','6108','Magic Bus
'),('7147','6108','MAPPA
'),('7148','6108','Marza Animation Planet
'),('7149','6108','Mook Animation
'),('7150','6108','Nippon Animation
'),('7151','6108','Nomad
'),('7152','6108','Oh- Production
'),('7153','6108','OLM, Inc-
'),('7154','6108','Ordet
'),('7155','6108','P-A- Works
'),('7156','6108','Passione
'),('7157','6108','Polygon Pictures
'),('7158','6108','Production I-G
'),('7159','6108','Production Reed
'),('7160','6108','Sanzigen
'),('7161','6108','Satelight
'),('7162','6108','Seven Arcs
'),('7163','6108','Silver Link
'),('7164','6108','SHAFT
'),('7165','6108','Shin-Ei Animation
'),('7166','6108','Studio 4.C
'),('7167','6108','Studio Chizu
'),('7168','6108','Studio Comet
'),('7169','6108','Studio DEEN
'),('7170','6108','Studio Fantasia
'),('7171','6108','Studio Gallop
'),('7172','6108','Studio Ghibli
'),('7173','6108','Studio Gokumi
'),('7174','6108','Studio Hibari
'),('7175','6108','Studio Pierrot
'),('7176','6108','Studio Ponoc
'),('7177','6108','Sunrise
'),('7178','6108','SynergySP
'),('7179','6108','Tatsunoko Productions
'),('7180','6108','Tezuka Productions
'),('7181','6108','TMS Entertainment
'),('7182','6108','TNK
'),('7183','6108','Toei Animation
'),('7184','6108','TRIGGER
'),('7185','6108','Troyca
'),('7186','6108','TYO Animations
'),('7187','6108','Ufotable
'),('7188','6108','Walt Disney Television International Japan
'),('7189','6108','White Fox
'),('7190','6108','Wit Studio
'),('7191','6108','Xebec
'),('7192','6108','Zexcs
'),('7193','6108','Shin Ei Animation
'),('7194','6098','Assemblage Entertainment
'),('7195','6098','Crest Animation Studios
'),('7196','6098','Future Thought Productions
'),('7197','6098','Green Gold Animation
'),('7198','6098','Lumicel Animation Studios
'),('7199','6098','Makuta VFX
'),('7200','6098','Pentamedia Graphics
'),('7201','6098','Toonz
'),('7202','6100','Alzahra VFX & Animation
'),('7203','6100','Honar Pooya Group
'),('7204','6100','Hoorakhsh Studios
'),('7205','6100','Raymon Media
'),('7206','6100','ROASHANA Studios
'),('7207','6100','Saba Animation Center
'),('7208','6162','Post Amazers
'),('7209','6175','Animafilm
'),('7210','6171','Se-ma-for
'),('7211','6169','Toon City Animation
'),('7212','6160','BUG
'),('7213','6156','SEK Studio
'),('7214','6129','Animonsta Studios
'),('7215','6129','KRU Studios
'),('7216','6193','Sparky Animation
'),('7217','6030','Cinesite
'),('7218','6030','Atomic Cartoons
'),('7219','6030','Bardel Entertainment
'),('7220','6030','Big Bad Boo
'),('7221','6030','CinéGroupe
'),('7222','6030','Cookie Jar Group
'),('7223','6030','Cuppa Coffee Studio
'),('7224','6030','DHX Media Ltd-
'),('7225','6030','Global Mechanic
'),('7226','6030','Guru Studios
'),('7227','6030','Jam Filled Toronto
'),('7228','6030','March Entertainment
'),('7229','6030','Mercury Filmworks
'),('7230','6030','National Film Board of Canada
'),('7231','6030','Nelvana
'),('7232','6030','Nitrogen Studios
'),('7233','6030','Rainmaker Entertainment
'),('7234','6030','Skycron
'),('7235','6030','Slap Happy Cartoons
'),('7236','6030','Studio B Productions
'),('7237','6030','ToonBox Entertainment
'),('7238','6030','Yowza- Animation
'),('7239','6043','Sparx
'),('7240','6043','China Film Animation
'),('7241','6043','Light Chaser Animation Studios
'),('7242','6043','Pearl Studio
'),('7243','6043','Shanghai Animation Film Studio
'),('7244','6043','Vasoon Animation
'),('7245','6229','Filmation
'),('7246','6229','Lionsgate
'),('7247','6229','Legendary
'),('7248','6076','Mac Guff
'),('7249','6076','Ankama
'),('7250','6076','Def2shoot
'),('7251','6076','Folimage
'),('7252','6076','Gaumont Animation
'),('7253','6076','H5
'),('7254','6076','Les Armateurs
'),('7255','6076','Millimages
'),('7256','6076','Sav- The World Productions
'),('7257','6076','Xilam
'),('7258','6096','Pannónia Film Studio
'),('7259','6096','Varga Studio
'),('7260','6102','Fred Wolf Films Dublin
'),('7261','6102','Boulder Media Limited
'),('7262','6102','Brown Bag Films
'),('7263','6102','Cartoon Saloon
'),('7264','6051','Zagreb school of animated films
'),('7265','6019','ToonBangla
'),('7266','6176','Animaccord Animation Studio
'),('7267','6176','InlayFilm
'),('7268','6176','Melnitsa Animation Studio
'),('7269','6176','Petersburg Animation Studio
'),('7270','6176','Soyuzmultfilm
'),('7271','6176','Toondra
'),('7272','6176','Wizart Animation
'),('7273','6102','Crew
'),('7274','6105','Lastrego
'),('7275','6105','Mondo TV
'),('7276','6105','Rainbow S-r-l-
'),('7277','6030','Copa Studio
'),('7278','6030','Video Brinquedo
'),('7279','6014','Act3animation
'),('7280','6014','Animal Logic
'),('7281','6014','The Peoples Republic of Animation
'),('7282','6014','Plastic Wax
'),('7283','6014','Burbank Films Australia
'),('7284','6136','Ánima Estudios
'),('7285','6136','Animex Producciones
'),('7286','6136','Estudio Haini
'),('7287','6110','Kharabeesh
'),('7288','6110','Rubicon Group Holding
'),('7289','6229','Jetlag Productions
'),('7290','6229','Saban Entertainment
'),('7291','6229','Imagi Animation Studios
'),('7292','6229','Adelaide Productions
'),('7293','6229','Adventure Cartoon Productions
'),('7294','6229','Amblimation
'),('7295','6229','Animation Collective
'),('7296','6229','Bakshi Productions
'),('7297','6229','Barré Studio
'),('7298','6229','Bill Melendez Productions
'),('7299','6229','Bray Productions
'),('7300','6229','Jumbo Pictures
'),('7301','6229','Chuck Jones Productions
'),('7302','6229','Circle 7 Animation
'),('7303','6229','Colossal Pictures
'),('7304','6229','Curious Pictures
'),('7305','6229','DePatie-Freleng Enterprises
'),('7306','6229','DIC Entertainment
'),('7307','6229','DisneyToon Studios
'),('7308','6229','DNA Productions
'),('7309','6229','DUCK Studios
'),('7310','6229','Filmation
'),('7311','6229','Fleischer Studios
'),('7312','6229','TriStar 
'),('7313','6229','Format Films
'),('7314','6229','Fox Animation Studios
'),('7315','6229','Games Animation
'),('7316','6229','George Pal Studio
'),('7317','6229','Golden Films
'),('7318','6229','Grantray-Lawrence Animation
'),('7319','6229','H-Gun
'),('7320','6229','Harman-Ising Productions
'),('7321','6229','ImageMovers Digital
'),('7322','6229','The Ink Tank
'),('7323','6229','International Film Service
'),('7324','6229','Jack Kinney Productions
'),('7325','6229','Jay Ward Productions
'),('7326','6229','Larry Harmon Pictures
'),('7327','6229','Jetix Animation Concepts
'),('7328','6229','Kroyer Films
'),('7329','6229','Laugh-O-Gram Studio
'),('7330','6229','Leon Schlesinger Productions
'),('7331','6229','Mathematical Applications Group, Inc-
'),('7332','6229','Sib Tower 12 Productions
'),('7333','6229','Noyes & Laybourne
'),('7334','6229','Pacific Data Images
'),('7335','6229','Perpetual Motion Pictures
'),('7336','6229','Phoenix Animation Studios
'),('7337','6229','Rankin/Bass Animated Entertainment
'),('7338','6229','Ruby-Spears Productions
'),('7339','6229','Skellington Productions
'),('7340','6229','Soup2Nuts
'),('7341','6229','Sunbow Entertainment
'),('7342','6229','Terrytoons
'),('7343','6229','Total Television
'),('7344','6229','Tradition Studios
'),('7345','6229','Ub Iwerks Studio
'),('7346','6229','Cartoons Films Inc
'),('7347','6229','United Productions of America
'),('7348','6229','Van Beuren Studios
'),('7349','6229','Walt Disney Feature Animation Florida
'),('7350','6229','Walter Lantz Productions
'),('7351','6229','Will Vinton Studios
'),('7352','6229','Winkler Pictures
'),('7353','6229','Charles Mintz Studios
'),('7354','6229','Screen Gems Studio
'),('7355','6229','Sony Pictures Animation
'),('7356','6228','Tiger Aspect Productions
'),('7357','6176','Animaccord Animation Studio');
GO

insert into [dbo].[Main]
values('8001','American Dad','2005','23','1005','2005','3021','4042','5010','7001','The random escapades of Stan Smith, a conservative C.I.A. Agent dealing with family life, and keeping America safe, all in the most absurd way possible.
'),('8002','Barney Bear','1939','8','1007','2003','3021','4002','5003','7004','The title character is an anthropomorphic cartoon character, a sluggish, sleepy bear who often is in pursuit of nothing but peace and quiet.
'),('8003','2 Stupid Dogs','1993','7','1007','2003','3021','4058','5012','7002','The show is about two unnamed dogs—neither of whom, as the title explains, are very intelligent—and their everyday misadventures. The animation style is unusual for the time- a very flat and simplistic style similar to the early Hanna-Barbera cartoons of the 1950s and 1960s, but with early 1990s humor and sensibility. Big Dog tends to talk much less than Little Dog. When Big Dog talks, he usually talks about food.
'),('8004','Popeye the Sailor','1960','5','1003','2002','3021','4001','5002','7003','First Release of Sailor Man Popeyee-s adventure
'),('8005','Nikos New Adventures','2019','30','1019','2003','3025','4042','5006','7018','A children comedy series about a young flying reindeer boy Niko and his colourful set of friends in snowy Lappish wilderness. New exciting adventures await as well as the challenges of daily life.
'),('8006','Little Dracula','1991','30','1008','2002','3021','4042','5005','7001','Little Dracula is a green-skinned, child vampire who aspires to be like his father, Big Dracula, yet also enjoys rock -n roll and surfing.
'),('8007','Motu Patlu','2012','10','1003','2001','3037','4008','5011','7013','The story revolves around Motu and Patlu, two friends living in Furfuri Nagar.
'),('8008','Doraemon','1973','11','1005','2001','3045','4061','5019','7165','Doraemon, a cat robot from the 22nd century, is sent by Sewashi Nobi to help Nobita Nobi, a young boy who scores poor grades and is frequently bullied by his two classmates, Gian and Suneo so that his descendants can improve their lives
'),('8009','Tom And Jerry  1940','1940','8','1007','2003','3021','4003','5001','7004','MGM-s signature cartoon series, Tom and Jerry brought the studio six Academy Awards. Directed by the duo of William Hanna and Joe Barbera, the pair later went on to open their own studio in the late 1950-s when MGM closed their animation department.
'),('8010','Baby Looney Tunes','2002','30','1003','2001','3021','4003','5021','7005','Baby Looney Tunes is a Canadian/American animated television series depicting toddler and preschool versions of Looney Tunes characters.
'),('8011','Spike And Tyke','1957','6','1007','2003','3021','4003','5004','7004','In season 1 The city is rounding up all unlicensed dogs. Spike has a license. So does Tyke. An unlicensed stray steals Tyke-s license.
'),('8012','Crayon Shin-Chan','1992','15','1003','2005','3045','4061','5020','7165','It follows the adventures of the five-year-old Shinnosuke Shin Nohara and his parents, baby sister, dog, neighbours, and friends and is set in Kasukabe,Saitama Prefecture of Japan.
'),('8013','Perman','1967','11','1003','2005','3045','4058','5019','7165','The story follows a boy named Mitsuo Suwa who meets an alien named Superman, later renamed Birdman. The alien is part of a group that maintains peace in the galaxy and recruits Mitsuo to become a Perman.
'),('8014','George and Junior','1946','8','1007','2003','3021','4003','5013','7004','Inspired by George and Lenny from Steinbeck-s Of Mice and Men, Junior was a fat, stupid bear to George-s in-control, straight-man bear. All the cartoons from this short-lived animation series were directed by creator Fred "Tex" Avery. Contrary to rumors to the contrary often credited to Tex Avery himself Tex Avery did not voice Junior in this cartoon.
'),('8015','Ninja Hatoori','1964','11','1005','2001','3045','4061','5009','7165','11-year-old Kenichi Mitsuba is an average kid who goes to secondary school and struggles with his studies, he is very stubborn and is very lazy and therefore always ends up frustrating his parents and teacher. He loves to find an easy way of things much to the annoyance of Hattori.
'),('8016','Shiva','2015','11','1007','2003','3021','4060','5011','7013','Shiva is a young boy who lives with his grandparents in a fictional city named Vedas in India. He is a child superhero with supernatural powers. He faces a lot of villains who try to harm or damage people and property of his city. He beats villains. A policeman named Mr. Laddo Singh who wanted to catch the criminals but gets in trouble is helped by Shiva. Shiva and his friends are always rewarded by the Indian Government for their utmost bravery.
'),('8017','Droopy','1943','8','1007','2003','3021','4003','5013','7004','Another of Tex Avery-s creations, Droopy was a lethargic dog who always comes out on top... despite his apparent lack of effort.
'),('8018','Rudra','2018','11','1019','2002','3037','4008','5017','7011','The story is about a 9-year-old magician named Rudra, who lives in the magical city of Sun City with his grandfather Jai Singh Chauhan. The series revolves around Rudra learning new magic every day from his grandfather and using the magic to defeat the evil magician Shakaal and his minions who are always stirring up trouble in town to stop Rudra from harnessing his true powers.
'),('8019','Meena','1992','21','1006','2001','3009','4022','5018','7265','Meena educates the children of South Asia on issues of gender, health, and social inequality through her stories in comic books, animated films 
'),('8020','Spike','1949','8','1007','2003','3021','4003','5013','7004','The story about a dog Spike. Most of the characters of MGM studios animated series (tom and jerry, spike and tyke, bear) also appared in this series
'),('8021','The Ugly Duckling and Me','2006','90','1003','2003','3019','4042','5008','7018','Hans Christian Andersen-s classic fairy tale about an ugly duckling who turns into a beautiful swan is reinvented in this innovative comedy. Ratso, a success-starved rodent impresario, is forced to hide in a duckling village and persuades the villagers that he is the father of a stray ugly duckling. Ratso and the ugly duckling set off on a perilous journey toward their big breakthrough, but dangerous foes, teenage problems and unexpected paternal feelings lie ahead.
'),('8022','Angry Birds','2013','3','1003','2002','3021','4004','5022','7355','Angry Birds Toons is a Finnish animated TV series based on Rovio-s video game franchise of the same name. 
'),('8023','We Bare Bears','2014','11','1003','2002','3021','4003','5016','7005','The bears attempt to integrate with human society, such as by purchasing food, making human companions or trying to become famous on the Internet, although these attempts see the bears struggle to do so due to the civilized nature of humans and their own animal instincts
'),('8024','Happy Harmonies','1934','8','1007','2003','3021','4001','5003','7004','Metro-Goldwyn-Mayer-s first foray into their own animation department was not quite in house. Rather than build an in house animation studio, MGM hired out the already existing Harman-Ising Productions to produce this series for them. The series was planned as an answer to Disney-s Silly Symphonies series, musical animated shorts with no real continuing characters shown before studio feature films
'),('8025','Mr. Bean- The Animated Series','2002','15','1003','2002','3021','4003','5023','7356','A British Comedy Series 
'),('8026','Family Guy','1999','22','1005','2005','3021','4042','5010','7001','Family Guy is an American sitcom series  centers on the Griffins, a family consisting of parents Peter and Lois, their children, Meg, Chris, and Stewie, and their anthropomorphic pet dog, Brian. The show is set in the fictional city of Quahog
'),('8027','Phineas and Ferb','2007','15','1003','2003','3021','4006','5024','7010','The program follows  Phineas Flynn and his stepbrother  Ferb  Fletcher on summer vacation. Every day, the boys embark on some grand new project , these are usually unrealistic given the protagonists ages (and are sometimes downright physically impossible), which annoys their controlling sister, Candace, who frequently tries to reveal their shenanigans to her and Phineas-  mother
'),('8028','Screwy Squirrel','1944','8','1007','2003','3021','4003','5015','7004','In the 1940-s race to create the most wacky character of all, Screwball "Screwy" Squirrel was easily the unanimous winner. Always crazy, sometimes brash and sometimes annoying and unsympathetic, Screwy abided no rules, real or imagined. The hyperactive squirrel created by Tex Avery for an MGM series that lasted five cartoons.
'),('8029','Masha & Bear','2011','7','1019','2001','3075','4003','5027','7357','A Russian animated television series 
'),('8030','Ben 10','2005','30','1002','2002','3021','4003','5026','7006','The story of Ben Tennyson, a typical kid who becomes very atypical after he discovers the Omnitrix, a mysterious alien device with the power to transform the wearer into ten different alien species.
'),('8031','Micky Mouse','1928','8','1007','2003','3021','4006','5025','7010','Mickey Mouse Sound Cartoons is a series of cartoons produced by Walt Disney Productions. The series started in 1928 with Steamboat Willie and ended in 1953 with The Simple Things. Four additional shorts were released between 1983 and 2013. The series is notable for its innovation with sound synchronization and character animation, and also introduced well-known characters such as Mickey Mouse, Minnie Mouse, Pluto, and Goofy.
'),('8032','The Powerpuff Girls','1998','30','1002','2002','3021','4003','5028','7002','Blossom, Bubbles, and Buttercup, three kindergarten-aged girls with superpowers. The girls all live in the fictional city of Townsville, with a scientist named Professor Utonium, and are frequently called upon by the city-s mayor to help fight nearby criminals and other enemies using their powers.
'),('8033','South Park','1997','22','1018','2006','3021','4019','5029','7013','Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.
'),('8034','The All New Popeye Hour','1978','7','1003','2002','3021','4059','5002','7002','Succeder of Poppye The Sailor
'),('8035','Captain and The Kids','1938','8','1007','2003','3021','4003','5007','7004','After their first, failed experiment with subcontracting their animation production out Hugh Harmon and Rudlof Ising, MGM brought production in house. The set producer Fred Quimby the task of building the animation department. He brought in Isadore "Friz" Freleng from Warner Bros. among others to help direct this series based on a comic strip by Rudolph Dirks. William Hanna also got his start on this series.
'),('8036','Jungledyret Hugo','2003','30','1019','2003','3019','4057','5014','7018','Hugo, the world-s most unusual and lovable jungle animal, returns in 13 hilarious, fun and action-packed episodes. We team up with Hugo and his friend Rita, the adorable city fox, on their quest to find a place where they can live in peace. Throughout their adventures, crazy generals, ambitious scientists and greedy paparazzi, all dreaming of world fame, pursue them.
'),('8037','BoJack Horseman','2014','25','1018','2006','3021','4062','5030','7134','An American adult animated tragicomedy web television series
'),('8038','Spongebob Squarepants','1999','23','1003','2004','3021','4008','5031','7011',' The series chronicles the adventures and endeavors of the title character and his aquatic friends in the fictional underwater city of Bikini Bottom.');
GO

insert into [dbo].[Character]
values('9001','8009','Tom
'),('9002','8006','Little Dracula
'),('9003','8021','Teen Ugly 
'),('9004','8028','Screwy Squirrel
'),('9005','8024','Old King Cole
'),('9006','8002','Barney Bear
'),('9007','8003','Mr. Hollywood
'),('9008','8007','Motu
'),('9009','8009','Jerry
'),('9010','8006','Twin Beaks
'),('9011','8002','Gohper
'),('9012','8020','Hibernating Bear
'),('9013','8021','Jessie
'),('9014','8035','African Pygmy
'),('9015','8035','Long John Silver
'),('9016','8002','Joe Scarecrow
'),('9017','8020','Rooster
'),('9018','8036','Ramon and Luke
'),('9019','8017','Bartender
'),('9020','8017','Joe Wolf
'),('9021','8006','Big Dracula
'),('9022','8006','Igor
'),('9023','8021','Fox
'),('9024','8035','Assistant
'),('9025','8035','Pluto
'),('9026','8017','Teacher
'),('9027','8017','Lou
'),('9028','8035','Henchman
'),('9029','8036','Professor Strix
'),('9030','8020','Spike
'),('9031','8020','Cat
'),('9032','8017','Happy Hound
'),('9033','8017','Lina Romay
'),('9034','8017','Red
'),('9035','8014','George
'),('9036','8014','Junior
'),('9037','8021','Swan
'),('9038','8002','Wee-Willie Wildcat
'),('9039','8020','Cop
'),('9040','8036','The Jungle Dog
'),('9041','8017','Droopy
'),('9042','8002','Squirrel
'),('9043','8020','Lady of the House
'),('9044','8021','Baby Ugly
'),('9045','8002','Mole
'),('9046','8005','Stayput
'),('9047','8020','Canary
'),('9048','8020','Next-Door Dog
'),('9049','8017','Southern Wolf
'),('9050','8017','Dragon
'),('9051','8017','Butch
'),('9052','8002','Shark
'),('9053','8005','Leah
'),('9054','8005','Finny
'),('9055','8002','Lobster
'),('9056','8035','Mrs. Hamburger
'),('9057','8002','Seal
'),('9058','8036','Meatball Charlie
'),('9059','8036','Generalissimo Maximillion Maximus
'),('9060','8036','Conrad Cupmann
'),('9061','8002','Benny Burro
'),('9062','8021','Emmy 
'),('9063','8006','Granny
'),('9064','8006','Mrs. Dracula
'),('9065','8006','Millicent
'),('9066','8006','Garlic Man
'),('9067','8006','Maggot
'),('9068','8024','Chicken
'),('9069','8024','Willy
'),('9070','8005','Mrs. Griffin
'),('9071','8005','Dave
'),('9072','8036','Carlton and Heath
'),('9073','8006','Deadwood
'),('9074','8006','Werebunny
'),('9075','8006','Hannah the Barbarian
'),('9076','8028','Sammy Squirrel
'),('9077','8021','Pox
'),('9078','8035','Captain 
'),('9079','8035','Hans
'),('9080','8035','Fritz
'),('9081','8035','Mama
'),('9082','8035','Doctor
'),('9083','8017','Reginald Fox
'),('9084','8017','Spike
'),('9085','8017','Mr. Theeves
'),('9086','8017','Drippy
'),('9087','8028','Minnie Hot-Cha
'),('9088','8028','Lenny
'),('9089','8021','Ratso
'),('9090','8036','Izabella Dehavalot
'),('9091','8036','Hugo
'),('9092','8036','Rita
'),('9093','8028','Chief
'),('9094','8028','Big Heel-Watha
'),('9095','8021','Daphne
'),('9096','8005','Flamingo
'),('9097','8036','Oleta
'),('9098','8021','Lou
'),('9099','8036','Doctor Loongkoffer
'),('9100','8036','Barbie Turner
'),('9101','8017','Flight Attendant
'),('9102','8017','Old Woman
'),('9103','8017','Lil Green Leprechaun
'),('9104','8028','Meathead Dog
'),('9105','8005','Mr. Griffin
'),('9106','8021','Peep Olga
'),('9107','8017','Snoopy
'),('9108','8017','Loopy
'),('9109','8017','Slick the Wolf
'),('9110','8017','Baby Droopy
'),('9111','8017','Fleas
'),('9112','8036','Wilhelm Croesus
'),('9113','8028','Truant Officer
'),('9114','8036','Carla
'),('9115','8011','Spike
'),('9116','8011','Tyke
'),('9117','8011','Alley Cats
'),('9118','8011','Owners
'),('9119','8011','Dogcatcher
'),('9120','8006','No Eyes
'),('9121','8021','Peep Olga
'),('9122','8024','Sheep
'),('9123','8024','Bruno
'),('9124','8024','Worm
'),('9125','8024','Frog
'),('9126','8003','The Little Dog
'),('9127','8034','Poopeye
'),('9128','8004','Popeye
'),('9129','8004','Wimpy
'),('9130','8017','Sheriff 
'),('9131','8017','Slim 
'),('9132','8017','Shorty
'),('9133','8021','Chickens
'),('9134','8024','Mother Goose 
'),('9135','8024','Little Boy Blue
'),('9136','8024','Cockroaches
'),('9137','8024','Rat
'),('9138','8024','Cat
'),('9139','8009','Topsy
'),('9140','8009','Meathead
'),('9141','8036','Sharpclaw
'),('9142','8014','Duck
'),('9143','8014','Dog
'),('9144','8014','Pygmies
'),('9145','8021','Stan
'),('9146','8024','Bosko
'),('9147','8024','Pioneer
'),('9148','8024','Newsboy
'),('9149','8024','Indian Explorer
'),('9150','8024','Indian Chief
'),('9151','8024','Canary
'),('9152','8024','Honey
'),('9153','8024','Wilbur
'),('9154','8024','The Doll Sisters
'),('9155','8024','Toy Soldier
'),('9156','8024','ABC Radio Host
'),('9157','8021','Frank
'),('9158','8024','Minnie
'),('9159','8024','Eggbert
'),('9160','8024','Three-Headed Dragon
'),('9161','8024','Devil
'),('9162','8024','Chinese Emperor
'),('9163','8024','Nightingale
'),('9164','8024','O. Dora Skunk
'),('9165','8024','Rooster
'),('9166','8021','Wesley
'),('9167','8024','Elsie
'),('9168','8024','Lucy
'),('9169','8024','Cissy
'),('9170','8024','Oscar
'),('9171','8009','Spike
'),('9172','8009','Tyke
'),('9173','8009','Butch
'),('9174','8009','Toodles Galore
'),('9175','8009','Mammy Two Shoes
'),('9176','8009','Nibbles
'),('9177','8009','Quacker
'),('9178','8009','Cuckoo
'),('9179','8024','Simon Legree
'),('9180','8024','Little Cheeser
'),('9181','8024','Honeybee
'),('9182','8024','Good Angel
'),('9183','8024','Bad Angel
'),('9184','8024','Spring Elves
'),('9185','8024','Pharmacist
'),('9186','8024','Magic Potions
'),('9187','8021','Phyllis
'),('9188','8009','Lightning
'),('9189','8009','George
'),('9190','8009','Joan
'),('9191','8009','Jeannie
'),('9192','8009','Baby
'),('9193','8009','The Ants
'),('9194','8009','Guardian devils
'),('9195','8009','Goldfish
'),('9196','8009','Muscles
'),('9197','8009','George
'),('9198','8009','Fluff
'),('9199','8009','Muff
'),('9200','8009','Puff
'),('9201','8009','Chérie
'),('9202','8009','Toots
'),('9203','8009','King of France
'),('9204','8009','Mechano cat
'),('9205','8009','Robot-Mouse
'),('9206','8009','The St. Bernard
'),('9207','8009','Eagle
'),('9208','8009','Lion
'),('9209','8009','Baby Woodpecker
'),('9210','8009','Uncle Pecos
'),('9211','8009','Radio
'),('9212','8009','Jackass
'),('9213','8009','DeWitt Clinton -Clint- Clobber
'),('9214','8009','Mad Scientist
'),('9215','8009','Thin Lady
'),('9216','8009','Tiny Bulldog
'),('9217','8009','Porpoise
'),('9218','8003','The Big Dog
'),('9219','8003','Buzz
'),('9220','8003','Cubby
'),('9221','8003','Buffy  Ziegenhagen
'),('9222','8003','The Cat
'),('9223','8003','Red
'),('9224','8034','Alice the Goon
'),('9225','8034','Bluto
'),('9226','8034','Col. Crumb
'),('9227','8034','Dinky
'),('9228','8034','Eugene the Jeep
'),('9229','8034','Olive Oyl
'),('9230','8034','Monica
'),('9231','8034','Pipeye
'),('9232','8034','Peepeye
'),('9233','8034','Popeye
'),('9234','8034','Poopdeck Pappy
'),('9235','8004','SweePea
'),('9236','8034','Pupeye
'),('9237','8034','Sandy
'),('9238','8034','Sgt. Bertha Blast
'),('9239','8034','Swee Pea
'),('9240','8034','Uncle Dudley
'),('9241','8034','Wimpy
'),('9242','8004','Sea Hag
'),('9243','8004','Brutus
'),('9244','8004','Pappy
'),('9245','8007','Patlu
'),('9246','8007','John
'),('9247','8007','Goon 1
'),('9248','8007','Dr Jhatka
'),('9249','8007','Chawala
'),('9250','8007','Chotu
'),('9251','8007','Chingam
'),('9252','8007','Bubblegum
'),('9253','8007','Goon 2
'),('9254','8007','Sabziwali
'),('9255','8007','Johny
'),('9256','8007','Pheri Lal
'),('9257','8007','Boxer
'),('9258','8007','Chawmin
'),('9259','8007','Hera Singh
'),('9260','8007','Virus
'),('9261','8007','Munni
'),('9262','8007','Mayor Singh
'),('9263','8007','Ghasitaram
'),('9264','8023','Grizzly
'),('9265','8023','Panda
'),('9266','8023','Ice Bear
'),('9267','8023','Chloe Park
'),('9268','8023','Nom Nom
'),('9269','8023','Charlie
'),('9270','8023','Ranger Tabes
'),('9271','8023','Lucy
'),('9272','8023','Paul 
'),('9273','8023','Annie
'),('9274','8023','Professor Lampwick
'),('9275','8023','Andy Bangs
'),('9276','8023','Karla
'),('9277','8023','Dave
'),('9278','8023','Yuri
'),('9279','8023','Wyatt
'),('9280','8023','Warren
'),('9281','8023','Faye
'),('9282','8023','Esteller
'),('9283','8023','Charles Barkley
'),('9284','8023','T-Pain
'),('9285','8023','Monsta X
'),('9286','8023','Pigeon Cartel
'),('9287','8023','Farmer
'),('9288','8023','Rangers
'),('9289','8023','Clifford
'),('9290','8023','Darrell
'),('9291','8023','Yana
'),('9292','8023','Barry
'),('9293','8023','Marie
'),('9294','8023','The Bros
'),('9295','8023','Captain Craboo
'),('9296','8023','The Mailman
'),('9297','8023','Mad Scientist
'),('9298','8023','Ralph
'),('9299','8023','Dr. Clark
'),('9300','8018','Rudra
'),('9301','8018','Jai Singh
'),('9302','8018','Shaakal
'),('9303','8018','Zoga
'),('9304','8018','Maira
'),('9305','8018','Varun
'),('9306','8018','Jenny
'),('9307','8018','Joddy
'),('9308','8018','Sir Majistico
'),('9309','8018','Zim
'),('9310','8018','Zum
'),('9311','8018','Zenny
'),('9312','8018','Zoddy
'),('9313','8018','Shakina
'),('9314','8018','Rangeela
'),('9315','8016','Shiva
'),('9316','8016','Ladoo Singh
'),('9317','8016','Aditya
'),('9318','8016','Uday
'),('9319','8016','Nana
'),('9320','8016','Nani
'),('9321','8016','Reva
'),('9322','8016','Swami
'),('9323','8016','Neha
'),('9324','8016','Veem Singh
'),('9325','8016','Pedaram
'),('9326','8019','Meena
'),('9327','8019','Raju
'),('9328','8019','Mithu
'),('9329','8019','Rani
'),('9330','8019','Dipu
'),('9331','8019','Lali
'),('9332','8019','Morol
'),('9333','8019','Dokandaar
'),('9334','8019','Moonmoon
'),('9335','8019','Rita
'),('9336','8015','Kanzo Hattori 
'),('9337','8015','Kenichi Mitsuba 
'),('9338','8015','Shinzo Hattori
'),('9339','8015','Shishimaru 
'),('9340','8015','Tsubame 
'),('9341','8015','Kemuzo Kemumaki 
'),('9342','8015','Kagechiyo 
'),('9343','8015','Yumeko Kawai
'),('9344','8015','Aiko-Sensei
'),('9345','8015','Jinzo Hattori
'),('9346','8015','Jippo 
'),('9347','8015','Koike-Sensei
'),('9348','8015','Kentaro Mitsuba
'),('9349','8015','Ama Mitsuba
'),('9350','8015','Professor Shinobino
'),('9351','8015','Togejirou
'),('9352','8008','Doraemon
'),('9353','8008','Nobita Nobi
'),('9354','8008','Shizuka Minamoto
'),('9355','8008','Suneo
'),('9356','8008','Takeshi Gouda
'),('9357','8008','Tamako Nobi
'),('9358','8008','Nobisuke Nobi
'),('9359','8008','Sewashi  
'),('9360','8008','Ganari
'),('9361','8008','Gachako  
'),('9362','8008','Botako  
'),('9363','8008','Damako  
'),('9364','8008','Jamako
'),('9365','8008','Mini-Doras
'),('9366','8008','Mr. Minamoto
'),('9367','8008','Mrs. Honekawa
'),('9368','8008','Mr. Honekawa
'),('9369','8008','Mrs. Goda
'),('9370','8008','Shinnosuke Nohara
'),('9371','8008','Misae Nohara
'),('9372','8008','Hiroshi Nohara
'),('9373','8008','Himawari Nohara
'),('9374','8008','Shiro
'),('9375','8008','Yoshiji Koyama
'),('9376','8008','Hisae Koyama
'),('9377','8008','Masae Koyama
'),('9378','8008','Musae Koyama
'),('9379','8008','Ginnosuke Nohara
'),('9380','8008','Tsuru Nohara
'),('9381','8008','Semashi Nohara
'),('9382','8008','Kazama Toru
'),('9383','8008','Nene Sakurada
'),('9384','8008','Masao Sato
'),('9385','8008','Bo
'),('9386','8008','Ai Suotome
'),('9387','8008','Hitoshi
'),('9388','8008','Yasuo Kawamura
'),('9389','8008','Terunobu
'),('9390','8008','Midori Ishizaka
'),('9391','8008','Junichi Ishizaka
'),('9392','8008','Momo Ishizaka
'),('9393','8008','Ume Matsuzaka
'),('9394','8008','Matsu Matsuzaka
'),('9395','8008','Take Matsuzaka
'),('9396','8008','Tokurou Gyouda
'),('9397','8008','Masumi Ageo
'),('9398','8008','Shiizou Atsukuru
'),('9399','8008','Bunta Takakura
'),('9400','8008','Mrs. Takakura 
'),('9401','8008','Moeko Sakurada
'),('9402','8008','Mineko Kazama
'),('9403','8008','Nizu Suzuki
'),('9404','8008','Kuroiso
'),('9405','8008','Nanako Oohara
'),('9406','8008','Shijuurou Oohara
'),('9407','8013','Mitsuo Suwa
'),('9408','8013','Booby
'),('9409','8013','Paryan
'),('9410','8013','Pako
'),('9411','8013','Pabo
'),('9412','8013','Bardman
'),('9413','8013','Robot
'),('9414','8013','Sabu
'),('9415','8013','Kabao
'),('9416','8013','Mitchan
'),('9417','8013','Mrs. Suwa
'),('9418','8013','Ganko Suwa
'),('9419','8013','Mantaro Suwa
'),('9420','8013','Professor Oyama
'),('9421','8013','Sharoko
'),('9422','8013','Yamagishi Yuki
'),('9423','8013','Saien Mado
'),('9424','8013','Don Ishikawa
'),('9425','8010','Bugs
'),('9426','8010','Tweety
'),('9427','8010','Lola
'),('9428','8010','Daffy
'),('9429','8010','Taz
'),('9430','8010','Floyd Minton
'),('9431','8010','Granny
'),('9432','8010','Sylvester 
'),('9433','8010','Melissa
'),('9434','8010','Petunia
'),('9435','8022','Red
'),('9436','8022','Chuck
'),('9437','8022','Bomb
'),('9438','8022','Blue
'),('9439','8022','Bubbles
'),('9440','8022','Terence
'),('9441','8022','Matilda
'),('9442','8022','Corporal Pig
'),('9443','8022','King Pig
'),('9444','8022','Chef Pig
'),('9445','8022','Minion Pig
'),('9446','8022','Foreman Pig
'),('9447','8025','Mr. Bean
'),('9448','8025','Teddy
'),('9449','8025','Mrs. Wicket
'),('9450','8025','Scrapper
'),('9451','8025','Irma Gobb
'),('9452','8026','Peter Griffin
'),('9453','8026','Lois Griffin
'),('9454','8026','Brian Griffin
'),('9455','8026','Stewie Griffin
'),('9456','8026','Meg Griffin
'),('9457','8026','Chris Griffin
'),('9458','8026','Cleveland Brown
'),('9459','8026','Glenn Quagmire
'),('9460','8026','Joe Swanson
'),('9461','8026','Mayor Adam West
'),('9462','8031','Micky
'),('9463','8031','Pluto
'),('9464','8031','Minne
'),('9465','8031','Goofy
'),('9466','8031','Pete
'),('9467','8031','Max Groof
'),('9468','8031','Clarabelle Cow
'),('9469','8031','Horace Horsecollar
'),('9470','8031','Oswald
'),('9471','8031','Chip
'),('9472','8031','Dale
'),('9473','8031','Phantom Blot
'),('9474','8030','Ben Tennyson
'),('9475','8030','Gwen Tennyson
'),('9476','8030','Max Tennyson
'),('9477','8030','Kevin Levin
'),('9478','8030','Rook Blonko
'),('9479','8032','Bloosom
'),('9480','8032','Bubbles
'),('9481','8032','Buttercup
'),('9482','8032','Mojo Jojo
'),('9483','8032','Him
'),('9484','8032','Fuzzy Lumpkins
'),('9485','8032','Mitch Mitchelson 
'),('9486','8032','Professor Utonium
'),('9487','8033','Cartman
'),('9488','8033','Stan
'),('9489','8033','Kenny
'),('9490','8033','Kyle
'),('9491','8038','Spongebob
'),('9492','8038','Patrick Star
'),('9493','8037','BoJack Horseman
'),('9494','8037','Princess Carolyn
'),('9495','8038','Mr Krabs
'),('9496','8038','Sandy Cheks
'),('9497','8037','Diane Nguyen
'),('9498','8038','Gray the Snail
'),('9499','8037','Todd Chavez
'),('9500','8037','Mr. Peanutbutter');
GO


/*Select for View All Tables in Console*/

select *from [dbo].[Genre]
select *from [dbo].[Rating]
select *from [dbo].[Language]
select *from [dbo].[Broadcast]
select *from [dbo].[Writer]
select *from [dbo].[Country]
select *from [dbo].[Studio]
select *from [dbo].[Main]
select *from [dbo].[Character]


/*Drop The Database*/
/*
drop database Cartoon
GO
*/
