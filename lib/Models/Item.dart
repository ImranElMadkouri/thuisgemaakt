class Item {
  int id;
  String name;
  String description;
  String tijd;
  String aantal;
  String image;
  double rating;
  int ratingCount;
  int color;
  List<String> ingrediants;
  List<String> voeding;

  Item({
    this.id,
    this.name,
    this.description,
    this.aantal,
    this.tijd,
    this.image,
    this.rating,
    this.ratingCount,
    this.color,
    this.ingrediants,
    this.voeding,
  });
}

List<Item> demoItems = [
  Item(
      id: 1,
      name: 'Pasta',
      description:
          "Verhit de olie in een diepe, brede koekenpan of braadpan op middelhoog vuur. Doe de gehaktballetjes erbij en bak ze 5 minuten, keer ze tot ze rondom bruin zijn. Voeg de ui en knoflook toe en bak nog 8 minuten tot ze zacht zijn, Voeg de ketchup, gehakte tomaten, gehakte basilicum en 400 ml water toe aan de pan en breng aan de kook. Voeg de spaghetti toe en kook 10-12 minuten, af en toe roerend. Als de pasta gaar is en de saus is ingekookt, breng op smaak en bestrooi met de basilicumblaadjes om te serveren.",
      image: 'assets/images/1.png',
      rating: 4.5,
      ratingCount: 565,
      tijd: "30 min",
      aantal: "4 personen",
      color: 0xFA9A9A9,
      ingrediants: [
        "1 ml koolzaadolie",
        "12 gehaktballetjes (300g)",
        "1 ui, fijngehakt",
        "3 teentjes knoflook, fijngehakt",
        "2 eetlepels ketchup",
        "2 blikjes tomatenblokjes van 400 g",
        "1 grote bos basilicum, fijngehakt, plus een paar hele blaadjes",
        "225g gedroogde spagetti"
      ],
      voeding: [
        "CALORIEËN: 477",
        "VET: 13g",
        "PROTÏENE: 30g",
        "KOOLHYDRATEN: 58g",
      ]),
  Item(
      id: 2,
      name: 'Vis curry',
      description:
          "Doe de vis in een grote kom met ½ theelepel zout en veel versgemalen zwarte peper, de helft van het limoensap en de helft van de kurkuma. Roer voorzichtig om te combineren. Opzij zetten. Verhit de olie in een koekenpan op middelhoog vuur en fruit de ui in ongeveer 8-10 minuten zacht. Voeg de gember, knoflook, ½ tl zout, de kruiden en de resterende kurkuma toe en kook nog 2 minuten tot geurig. Roer de tomatenpuree erdoor en bak al roerend nog een minuutje. Doe het mengsel van flespompoen en zoete aardappel in een hittebestendige kom met een scheutje water, dek af en zet de magnetron 3 minuten op de hoogste stand tot de groenten gaar zijn. Doe het mengsel in de pan met de ui en kruiden en roer om te combineren. Voeg de kokosmelk, 180 ml water, de tamarindepasta, indien gebruikt, en een snufje zout en zwarte peper toe en laat het op middelhoog vuur 10-12 minuten sudderen tot het ingedikt en geurig is.",
      image: 'assets/images/2.png',
      rating: 3,
      ratingCount: 535,
      tijd: "20 min",
      aantal: "4 personen",
      color: 0xFA9A9A9,
      ingrediants: [
        "250g diepgevroren duurzame witte vis, in hapklare stukjes gesneden",
        "1 limoen, geperst",
        "1 tl gemalen kurkuma",
        "3 eetlepels plantaardige olie of ghee",
        "1 grote ui, fijngehakt",
        "1 el geraspte gember",
        "3 teentjes knoflook, dun gesneden",
        "2 tl gemalen komijn",
        "2 tl gemalen koriander",
        "½-1 tl chilivlokken of -poeder, of naar smaak",
        "2 el tomatenpuree",
        "250 g voorbereide in blokjes gesneden flespompoen en zoete aardappel mix",
        "200 ml kokosmelk",
        "2 eetlepels tamarindepasta (optioneel)",
        "klein bosje koriander, grof gehakt, of gebruik munt",
        "gekookte rijst, om te serveren (ongeveer 250g ongekookt gewicht)",
      ],
      voeding: [
        "CALORIEËN: 497",
        "VET: 19g",
        "PROTÏENE: 16g",
        "KOOLHYDRATEN: 63g",
      ]),
  Item(
      id: 3,
      name: 'Aardappel',
      description:
          "Verwarm de oven voor op 220C/200C hetelucht/gas 6. Prik de aardappel overal in met een vork en bak 1 uur tot hij goudbruin van buiten en zacht van binnen is. Meng 1 tl olijfolie met het knoflookzout. Snijd een diep kruis in de bovenkant van het jasje, sprenkel de knoflookolie in het kruis en wrijf het helemaal over de buitenkant. Zet terug in de oven en bak nog 15 minuten tot de randen goudbruin en krokant zijn. Verkruimel ondertussen de feta in een kom, voeg de yoghurt toe en klop tot een romig geheel. Roer de rode peper erdoor met een flinke snuf zwarte peper en schep de opgeklopte feta in het jasje. Bestrooi met de sumak, besprenkel met de resterende 1 tl olijfolie en strooi er eventueel een paar gescheurde basilicumblaadjes over.",
      image: 'assets/images/3.png',
      rating: 5,
      ratingCount: 782,
      tijd: "75 min",
      aantal: "1 personen",
      color: 0xFA9A9A9,
      ingrediants: [
        "1 gebakken aardappel",
        "2 tl olijfolie",
        "½ tl knoflookzout",
        "50g feta",
        "50 gram griekse yoghurt",
        "1 geroosterde rode paprika uit een pot (ongeveer 25 g), fijngehakt",
        "½ tl sumak",
        "paar blaadjes basilicum, om te serveren (optioneel)",
      ],
      voeding: [
        "CALORIEËN: 420",
        "VET: 15g",
        "PROTÏENE: 22g",
        "KOOLHYDRATEN: 39g",
      ]),
  Item(
      id: 4,
      name: 'Pasta',
      description:
          "Verhit 2 el olie in een pan op middelhoog vuur. Fruit de ui met een snufje zout 7 min. Voeg de knoflook, chilipeper en rozemarijn toe en bak nog 1 min. Voeg de tomaten en suiker toe en laat 20 minuten sudderen. Verhit de resterende olie in een middelgrote koekenpan op middelhoog vuur. Pers het worstvlees uit de schil en braad het in 5-7 minuten goudbruin met een houten lepel. Voeg toe aan de saus met de melk en citroenrasp en laat nog 5 minuten sudderen. Om in te vriezen, volledig laten afkoelen en in grote diepvrieszakken doen.",
      image: 'assets/images/4.png',
      rating: 3.5,
      ratingCount: 782,
      tijd: "50 min",
      aantal: "4 personen",
      color: 0xFA9A9A9,
      ingrediants: [
        "3 el olijfolie",
        "1 ui, fijngehakt",
        "2 grote teentjes knoflook, geperst",
        "¼ tl chilivlokken",
        "2 takjes rozemarijn, blaadjes fijngehakt",
        "2 blikjes tomatenblokjes van 400 g",
        "1 el bruine suiker",
        "6 varkensworstjes",
        "150 ml volle melk",
      ],
      voeding: [
        "CALORIEËN: 589",
        "VET: 18g",
        "PROTÏENE: 19g",
        "KOOLHYDRATEN: 83g",
      ]),
  Item(
      id: 5,
      name: 'Noedels',
      description:
          "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      image: 'assets/images/5.png',
      rating: 3.5,
      ratingCount: 782,
      tijd: "-",
      aantal: "-",
      color: 0xFA9A9A9,
      ingrediants: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ],
      voeding: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ]),
  Item(
      id: 6,
      name: 'Vis',
      description:
          "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      image: 'assets/images/6.png',
      rating: 3.5,
      ratingCount: 782,
      tijd: "-",
      aantal: "-",
      color: 0xFA9A9A9,
      ingrediants: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ],
      voeding: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ]),
  Item(
      id: 7,
      name: 'Schotel',
      description:
          "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      image: 'assets/images/7.png',
      rating: 3.5,
      ratingCount: 782,
      tijd: "-",
      aantal: "-",
      color: 0xFA9A9A9,
      ingrediants: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ],
      voeding: [
        "Dit recept is deel van de Premium kant van de app, neem nu een premium abbonnement om dit recept te zien.",
      ]),
];
