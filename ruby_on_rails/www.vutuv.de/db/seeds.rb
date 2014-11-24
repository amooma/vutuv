# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Measurement Units
#
kilogramm = MeasurementUnit.create(name: 'Kilogramm')
liter = MeasurementUnit.create(name: 'Liter')
meter = MeasurementUnit.create(name: 'Meter')

# Manufacturers
#
mars_gmbh = Manufacturer.create(name: 'MARS GmbH', url: 'http://www.mars.com/', wikipedia_url: 'http://de.wikipedia.org/wiki/Mars_Deutschland')
barilla_hersteller = Manufacturer.create(name: 'BARILLA G. e R. FRATELLI – Società per Azioni con Socio Unico', url: 'http://www.barillagroup.com/', wikipedia_url: 'http://de.wikipedia.org/wiki/Barilla')
suedzucker_ag = Manufacturer.create(name: 'Südzucker AG', url: 'http://www.suedzucker.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/S%C3%BCdzucker')
seeberger_gmbh = Manufacturer.create(name: 'Seeberger GmbH', url: 'http://www.seeberger.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Seeberger_(Unternehmen)')
unilever = Manufacturer.create(name: 'Unilever Deutschland GmbH', url: 'http://www.unilever.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Unilever')
henkel = Manufacturer.create(name: 'Henkel AG & Co. KGaA', url: 'http://www.henkel.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Henkel_(Unternehmen)')
coca_cola_company = Manufacturer.create(name: 'Coca-Cola Erfrischungsgetränke AG', url: 'http://www.coca-cola-deutschland.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/The_Coca-Cola_Company')
procter_gamble = Manufacturer.create(name: 'Procter & Gamble Germany GmbH & Co Operations oHG', url: 'http://www.pg.com/', wikipedia_url: 'http://de.wikipedia.org/wiki/Procter_%26_Gamble')
johnson_und_johnson = Manufacturer.create(name: 'Johnson & Johnson GmbH', url: 'http://www.jnjgermany.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Johnson_%26_Johnson')


# Brands
#
miracoli = Brand.create(name: 'Mirácoli', url: 'http://www.miracoli.de/', manufacturer: mars_gmbh, wikipedia_url: 'http://de.wikipedia.org/wiki/Mir%C3%A1coli')
unclebens = Brand.create(name: 'Uncle Ben’s', url: 'http://www.unclebens.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Uncle_Ben%E2%80%99s')
barilla = Brand.create(name: 'Barilla', url: 'http://www.barilla.de/', manufacturer: barilla_hersteller)
suedzucker = Brand.create(name: 'Südzucker', url: 'http://www.suedzucker.de/de/Zucker/Zuckersortiment/', manufacturer: suedzucker_ag)
seeberger = Brand.create(name: 'Seeberger', manufacturer: seeberger_gmbh)
bertolli = Brand.create(name: 'Bertolli', manufacturer: unilever, url: 'http://www.bertolli.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Bertolli')
persil = Brand.create(name: 'Persil', manufacturer: henkel, url: 'http://www.persil.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Persil')
coca_cola = Brand.create(name: 'Coca-Cola', manufacturer: coca_cola_company, url: 'http://www.coke.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/Coca-Cola')
always = Brand.create(name: 'always', manufacturer: procter_gamble, url: 'http://www.always.de/')
ob = Brand.create(name: 'o.b.', manufacturer: johnson_und_johnson, url: 'http://www.ob.de/', wikipedia_url: 'http://de.wikipedia.org/wiki/O.b.')

# Products
#
miracoli_spagetti = Product.new(name: 'Spaghetti mit Tomatensauce 2-3 Port.', brand: miracoli, url: 'http://www.miracoli.de/sortiment/pastagerichte/spaghetti-mit-tomatensauce', description: 'Der Klassiker mit der original Würzmischung und dem leckeren Pamesello-Käse.')
file = File.open(Rails.root.join('db','seeds','miracoli_spagetti.jpg'))
miracoli_spagetti.photo = file
file.close
miracoli_spagetti.save

fusilli = Product.new(name: 'Fusilli', brand: barilla, url: 'http://www.barilla.de/Produkte/pasta/Klassische_Sorten/Fusilli.htm', description: 'Fusilli Barilla zeichnen sich durch ihre Spiralform aus, wobei die weichen Kurven in harmonischer Weise aufeinander folgen. Aufgund dieser besonderen Form passen Fusilli sowohl zu aufwendigen Zubereitungen als auch zu einfachen Saucen und bringen jedes Gericht intensiv zur Geltung. Und selbst die gewagtesten Kombinationen gelingen mit Fusilli wunderbar.')
file = File.open(Rails.root.join('db','seeds','fusilli.jpg'))
fusilli.photo = file
file.close
fusilli.save

tortiglioni = Product.new(name: 'Tortiglioni', brand: barilla, url: 'http://www.barilla.de/Produkte/pasta/Klassische_Sorten/Tortiglioni.htm', description: 'Mit ihrer einfachen aber attraktiven Form sind Tortiglioni Barilla eine eindeutig elegante Pastasorte.
Tiefe Rillen und ihr große Hohlraum steigern die Aufnahme der Saucen, wobei das Aroma sowohl auf der Außenseite als auch im Inneren eingefangen wird, um erst im Gaumen wieder freigesetzt zu werden. Dies ist einer der Gründe, weshalb die Wahl der Pastasorte bei vielen der berühmtesten Saucen der italienischen Küche auf Tortiglioni fällt. Denn jede einzelne Geschmackskomponente der Zubereitung kann sich voll entfalten.')
file = File.open(Rails.root.join('db','seeds','tortiglioni.jpg'))
tortiglioni.photo = file
file.close
tortiglioni.save

farfalle = Product.new(name: 'Farfalle', brand: barilla, url: 'http://www.barilla.de/Produkte/pasta/Klassische_Sorten/Farfalle.htm', description: 'An Schmetterlingen inspiriert sich die zierliche und lebhafte Form, die strahlend gelbe Farbe erinnert hingegen an reifen Weizen und südliche Sonne. Die zu Quadraten geschnittene Pasta wird in der Mitte leicht gerafft und dadurch etwas dicker, die Flügel bleiben dabei dünner und leichter. So hat Barilla eine fröhliche und einladende Pastasorte für die italienische Küche geschaffen. Farfalle Barilla beflügeln die Phantasie in der Küche und entfalten ihre Eigenschaften in zahlreichen Kombinationen, werden aber vorwiegend zu äußerst delikaten Gemüse- und Fischspeisen gereicht. Ohne je ihre charakteristische Kochfestigkeit einzubüßen.')
file = File.open(Rails.root.join('db','seeds','farfalle.jpg'))
farfalle.photo = file
file.close
farfalle.save

maccheroni = Product.new(name: 'Maccheroni', brand: barilla, url: 'http://www.barilla.de/Produkte/pasta/Klassische_Sorten/Maccheroni.htm', description: 'Barilla Maccheroni  kurze, röhrenförmige Pasta mit einem Loch in der Mitte. Die Konsistenz, der zentrale Hohlraum und die perfekte Kochfestigkeit machen diese Pastasorte zu einer idealen Grundlage für Tomatensaucen sowie für Gemüse- und Käsezubereitungen.')
file = File.open(Rails.root.join('db','seeds','maccheroni.jpg'))
maccheroni.photo = file
file.close
maccheroni.save

# Reis
#
langkorn_reis = Product.new(name: 'Spitzen-Langkorn-Reis 10 Minuten Kochbeutel 500g', brand: unclebens, url: 'http://www.unclebens.de/produkte/produkt/spitzen-langkorn-reis-10-minuten-kochbeutel-500g/details.html', description: '100% Parboiled Spitzen-Langkorn-Reis')
file = File.open(Rails.root.join('db','seeds','langkorn_reis.png'))
langkorn_reis.photo = file
file.close
langkorn_reis.save

# Zucker
#
fein_zucker = Product.new(name: 'Fein Zucker', brand: suedzucker, url: 'http://www.mein-suedzucker.de/produkte/fein-zucker/', description: 'Der Fein Zucker mit seiner feinen Kristallgröße ist der Alleskönner für universelle Verwendungsmöglichkeiten. Das macht ihn zum Zucker-Genuss für jeden Tag. Seine Vielseitigkeit verdankt er den gleichmäßig feinen Kristallen, die z. B. Hefeteige oder feine Desserts, Aufläufe, Pudding, Quark- und Joghurtspeisen, aber auch jedes andere süße Gericht problemlos gelingen lassen. Der Fein Zucker als Allround-Talent ist entsprechend aus keiner Küche wegzudenken!')
file = File.open(Rails.root.join('db','seeds','fein_zucker.jpg'))
fein_zucker.photo = file
file.close
fein_zucker.save

rohrzucker_grob = Product.new(name: 'Rohrzucker grob', brand: seeberger, description: 'Der besonders aromatische, unraffinierte Rohrzucker wird aus bestem tropischen Zuckerrohr gewonnen. Er eignet sich bestens zum Süßen von heißen und kalten Getränken, wie beispielsweise Caipirinha, dem köstlichen brasilianischen Cocktail.', url: 'https://www.seeberger.de/product_info.php/info/p89_Rohrzucker-grob--unraffiniert.html')
file = File.open(Rails.root.join('db','seeds','rohrzucker_grob.jpg'))
rohrzucker_grob.photo = file
file.close
rohrzucker_grob.save

# Öl
#
olivenoel_classico = Product.new(name: 'Olivenöl Cucina Classico', brand: bertolli, description: 'Das extra raffinierte, gefilterte und geschmacksneutrale Olivenöl ist hitzebeständig bis 220 Grad. Es ist ideal zum Braten, Backen und Frittieren. Bratkartoffeln, ein saftiges Steak, Eierspeisen, Kuchen oder kross frittierte Pommes gelingen perfekt. Es betont den Geschmack der Speisen – buon appetito!', url: 'http://www.bertolli.de/produkte/details/1802/olivenoel-olio-di-oliva-cucina')
file = File.open(Rails.root.join('db','seeds','olivenoel_classico.jpg'))
olivenoel_classico.photo = file
file.close
olivenoel_classico.save

olivenoel_extra_vergine = Product.new(name: 'Olivenöl Extra Vergine Gentile', brand: bertolli, description: 'Das extra raffinierte, gefilterte und geschmacksneutrale Olivenöl ist hitzebeständig bis 220 Grad. Es ist ideal zum Braten, Backen und Frittieren. Bratkartoffeln, ein saftiges Steak, Eierspeisen, Kuchen oder kross frittierte Pommes gelingen perfekt. Es betont den Geschmack der Speisen – buon appetito!', url: 'http://www.bertolli.de/produkte/details/1802/olivenoel-olio-di-oliva-cucina')
file = File.open(Rails.root.join('db','seeds','olivenoel_extra_vergine.jpg'))
olivenoel_extra_vergine.photo = file
file.close
olivenoel_extra_vergine.save

# Waschmittel
#
persil_megaperls = Product.new(name: 'Persil Megaperls®', brand: persil, description: 'Die hochkonzentrierten Persil Megaperls® bieten maximale Waschkraft bei weitaus geringerer Dosierung. Außerdem wird durch die Perlenform gewährleistet, dass kein Staub entsteht. Persil Megaperls® garantieren strahlende Reinheit bei jeder Wäsche.', url: 'http://www.persil.de/de/produkte/persil-megaperls.html')
file = File.open(Rails.root.join('db','seeds','persil','persil_megaperls.jpg'))
persil_megaperls.photo = file
file.close
persil_megaperls.save

# Getränke
#
coke = Product.new(name: 'Coca-Cola', brand: coca_cola, description: 'Coca-Cola ist einzigartig erfrischend und belebend.', url: 'http://www.coke.de/')
file = File.open(Rails.root.join('db','seeds','coca_cola','coke-1l.jpg'))
coke.photo = file
file.close
coke.save

coke_light = Product.new(name: 'Coca-Cola light', brand: coca_cola, description: 'Coca-Cola ist einzigartig erfrischend und belebend.', url: 'http://www.coke_light.de/')
file = File.open(Rails.root.join('db','seeds','coca_cola','coke-light-1l.jpg'))
coke_light.photo = file
file.close
coke_light.save

# Drogerie
#
always_maxi = Product.new(name: 'Always Maxi Normal Plus Binden mit Flügeln', brand: always, description: 'Always Maxi Normal Plus mit Flügeln gibt Ihnen bis zu 8 Stunden ein sauberes, frisches Gefühl.', url: 'http://www.always.de/de-DE/feminine-produkte/binden/always-maxi-normal-plus-binden-mit-flugeln.aspx')
file = File.open(Rails.root.join('db','seeds','always','always_maxi.png'))
always_maxi.photo = file
file.close
always_maxi.save

ob_original = Product.new(name: 'o.b.® Original Normal', description: 'Die geschwungenen Rillen von o.b.® wurden entwickelt, um die Flüssigkeit effizient und sicher ins Innere des Tampons zu leiten. So fühlen Sie sich zuverlässig geschützt.
Von Stiftung Warentest erhielt o.b.® Normal als einziger von 22 getesteten Tamponmarken das Urteil "sehr gut".', url: 'http://www.ob.de/original-normal#product')
file = File.open(Rails.root.join('db','seeds','ob','ob_original.jpg'))
ob_original.photo = file
file.close
ob_original.save
