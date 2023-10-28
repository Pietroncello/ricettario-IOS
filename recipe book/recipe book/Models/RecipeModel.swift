//
//  RecipeModel.swift
//  recipe book
//
//  Created by Marco Cello on 21/10/23.
//

import Foundation

enum Category : String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case antipasto = "Antipasto"
    case primo = "Primo"
    case secondo = "Secondo"
    case contorno = "Contorno"
    case dolce = "Dolce"
    case salse = "Salse"
}
enum Continent : String {
    var id: String {self.rawValue}
    case europa = "Europa"
    case asia = "Asia"
    case africa = "Africa"
    case oceania = "Oceania"
    case america = "America"
}

struct Recipe : Identifiable{
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients : String
    let directions : String
    let time : Int
    let category : Category.RawValue
    let continent : Continent.RawValue
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Ravioli al vapore",
            image: "dumplings",
            description: "I ravioli al vapore cinesi sono deliziosi bocconcini di pasta sottile ripieni di ingredienti come carne, verdure o gamberi, cotti al vapore per creare una texture morbida e un sapore ricco. Sono un piatto tradizionale della cucina cinese, apprezzati per la loro leggerezza e delicatezza.",
            ingredients: "250g Farina per impasto\n 150g Acqua\n 250g di ripieno a scelta (es. carne macinata, verdure, gamberi)\n Q.B Salsa di soia (per condimento opzionale)\n Q.B Salsa di peperoncino (per condimento opzionale)",
            directions: "Per preparare i ravioli al vapore cinesi, inizia preparando un impasto di farina e acqua, che viene poi steso in sfoglie sottili. Successivamente, riempi le sfoglie con il ripieno scelto, come carne macinata,  verdure o gamberi, e piegale accuratamente per formare i ravioli. Infine, metti i ravioli in un cestello di bambù o in un vaporiera, e cuocili al vapore per circa 10-15 minuti, fino a quando la pasta diventa traslucida e il ripieno risulta cotto. Servili caldi, magari accompagnati da salsa di soia o salsa di peperoncino per un tocco di sapore extra.",
            time: 60,
            category: "Antipasto",
            continent: "Asia"
        ),
        Recipe(
            name: "Bruschette  al pomodoro",
            image: "bruschette",
            description: "Le bruschette al pomodoro sono delle gustose fette di pane tostato condite con pomodorini a cubetti, olio extravergine di oliva, aglio ed erbette aromatiche. Un grande classico della cucina italiana, servito tradizionalmente come antipasto, aperitivo, stuzzichino o anche come ricca e genuina merenda. Le fette di pane vengono tostate leggermente, in modo che restino croccanti fuori e morbide dentro, e poi guarnite con i pomodori conditi in modo fresco e aromatico.",
            ingredients: "5 fette di pane\n 10 pomodorini datterini\n Q.B origano\n Q.B Sale\n Q.B Olio EVO",
            directions: "Scaldare il pane, tagliare a cubetti i pomodorini, condirli con le spezie e assemblare tutto insieme.",
            time: 15,
            category: "Antipasto",
            continent: "Europa"
        ),
        Recipe(
            name: "Pasta  al pesto",
            image: "pasta-pesto",
            description: "La pasta al pesto è un'ode alla semplicità e all'autenticità della cucina italiana, dove la pasta, generalmente spaghetti o trofie, viene condita con una salsa verde vibrante e aromatica, risultando in un piatto delizioso e appagante che incanta i palati di tutto il mondo.",
            ingredients: "80g di trofie fresche\n Q.B sale\n  Q.B Olio EVO\n 40g pesto genovese",
            directions: "Mettere a bollire l’acqua salandolo. Buttare la pasta sull’acqua e lasciar cuocere per 3 minuti, scolare e condire con il pesto, olio EVO e poi servire.",
            time: 20,
            category: "Primo",
            continent: "Europa"
        ),
        Recipe (
            name: "Ramen",
            image: "ramen-jap",
            description:"Il ramen è un piatto tipico del Giappone",
            ingredients: "70g Noodles\n 100g pollo\n 3 spicchi di aglio\n 1lt Acqua\n 1 uovo\n 1busta alghe wakame\n 20ml salsa di soia",
            directions: " Prepara il brodo facendo bollire le ossa di maiale o pollocon acqua, cipolla, carota, zenzero, aglio e, se lo desideri, funghi secchi ealghe kombu per diverse ore finché il brodo si sviluppa in un sapore ricco e profondo. Cuoci i noodles secondo le istruzioni sulla confezione, quindi scolali e distribuiscili nelle ciotole. Versa il brodo bollente sulle ciotole di noodles, quindi aggiungi il condimento desiderato, come la carne, l'uovo sodo, i cipollotti, l'alga nori e gli altri ingredienti preferiti, e servi il tuo ramen caldo e delizioso.",
            time: 70,
            category: "Primo",
            continent: "Asia"
        ),
        
        Recipe(
            name: "Scaloppine",
            image: "scaloppine",
            description:" Le scaloppine di pollo sono sottili fettine di petto di pollo impanate e cotte fino a doratura in padella, risultando in una carne tenera e croccante. Servite spesso con una salsa leggera o limone, sono un classico della cucina italiana apprezzato per la loro versatilità e sapore delizioso.",
            ingredients : "120g  petto di pollo\n Q.B sale\n Q.B pepe\n 30g farina\n 5ml succo di limone",
            directions: "Per preparare le scaloppine di pollo, batti sottilmente fette di petto di pollo, impanale in farina, uovo e pangrattato. Cuoci in padella con burro o olio fino a doratura e servi con una salsa a piacere, come il succo di limone o una salsa al vino bianco e limone.",
            time: 20,
            category: "Secondo",
            continent: "Europa"
        ),
       
        Recipe(
            name: "Dashimaki",
            image: "dashimaki",
            description: " Il Dashimaki Tamago è una specialità giapponese che consiste in un soffice e gustoso omelette arrotolata, preparata con uova, dashi (brodo di pesce), zucchero e salsa di soia. La sua consistenza è setosa e il sapore equilibrato tra dolce e salato, rendendolo un piatto molto apprezzato nella cucina giapponese, spesso servito come contorno o in un sushi o bento.",
            ingredients: "5 uova\n 10g katsuobushi\n 10ml mirin\n 15g zucchero\n 10g sake",
            directions: "Per preparare il Dashimaki Tamago, mescola uova, dashi, zucchero e salsa di soia in una ciotola. Cuoci il composto in una padella antiaderente a fuoco medio, arrotolandolo man mano che cuoce per ottenere un omelette arrotolata perfettamente soffice e deliziosa.",
            time: 30,
            category: "Secondo",
            continent: "Europa"
            
            
        ),
        
        Recipe (
            name: "Patate al forno",
            image: "patate",
            description: "Le patate al forno sono un contorno apprezzato per la loro croccantezza dorata all'esterno e la morbidezza all'interno. Condite con aromi come rosmarino, aglio e olio d'oliva, le patate diventano un piatto rustico e delizioso.",
            ingredients: "150g patate\n Q.B sale\n Q.B olio EVO Q.B rosmarino",
            directions:" Per preparare le patate al forno, taglia le patate a fette o spicchi, condiscile con olio d'oliva, rosmarino, aglio, sale e pepe, quindi cuoci nel forno preriscaldato a 200°C fino a quando diventano dorate e tenere all'interno, mescolando occasionalmente.",
            time: 40,
            category: "Contorno",
            continent: "Europa"
            
            
        ),
        Recipe(
           name: "Pollo Karaage",
           image: "karaage",
           description: "Il pollo karaage è un piatto giapponese di pollo fritto, noto per la sua crosta dorata e croccante che avvolge bocconcini di pollo succulento e ben condito. Questo piatto è spesso marinato in una miscela di salsa di soia, zenzero e aglio prima di essere fritto, conferendo un sapore ricco e avvolgente.",
           ingredients: "200g sovraccoscia di pollo\n Q.B sale\n Q.B pepe\n 150g panko\n 3 uova\n",
           directions: "Per preparare il pollo karaage, taglia il pollo a bocconcini, marinalo in salsa di soia, zenzero e aglio, quindi impanalo in fecola di patate e fritto fino a doratura. Il risultato è un pollo croccante e saporito, perfetto come antipasto o contorno." ,
           time: 30 ,
           category: "Contorno",
           continent: "Asia"
            
        ),
        
      
        Recipe(
            name: "Mochi al Tè Verde",
            image: "mochi",
            description: "I mochi al tè verde sono dolci giapponesi tradizionali realizzati con glutinoso riso dolce e ripieni di una morbida crema al tè verde. Sono deliziosamente masticabili e presentano un sapore leggermente amaro e dolce.",
            ingredients: "200g di farina di glutinoso riso\n 2 cucchiai di zucchero a velo\n 2 cucchiai di polvere di tè verde matcha\n Crema di tè verde (per il ripieno)\n",
            directions: "Per preparare i mochi al tè verde, mescola la farina di glutinoso riso, lo zucchero a velo e il tè verde matcha, quindi riempi ogni mochi con la crema di tè verde e forma piccoli quadrati. Servi e gustali!" ,
            time: 45,
            category: "Dolce",
            continent: "Asia"
            
            
        ),

        Recipe(
            name: "Tiramisù",
            image: "tiramisu",
            description: "Il tiramisù è un classico dessert italiano, composto da strati di biscotti savoiardi inzuppati nel caffè, alternati a uno strato di crema al mascarpone. Questo dolce è noto per la sua consistenza cremosa e il sapore equilibrato tra il caffè e il mascarpone.",
            ingredients: "250g di mascarpone\n 3 uova\n 100g di zucchero\n Savoiardi\n Caffè forte\n Cacao in polvere\n",
            directions: "Per preparare il tiramisù, mescola il mascarpone, le uova e lo zucchero. Inzuppa i savoiardi nel caffè, quindi alterna strati di biscotti e crema nel tuo recipiente. Infine, spolvera con cacao in polvere e lascia raffreddare in frigorifero prima di servire." ,
            time: 30,
            category: "Dolce",
            continent: "Europa"
            
            
        ),
        
     
        Recipe(
            name: "Salsa Teriyaki",
            image: "teriyaki",
            description: "La salsa Teriyaki è una salsa giapponese dolce e salata, perfetta per condire carne, pesce o verdure. Preparata con salsa di soia, zucchero, mirin e sake, questa salsa dona un sapore ricco e lucido ai tuoi piatti.",
            ingredients: "120 ml di salsa di soia\n 60 ml di mirin\n 60 ml di sake\n 3 cucchiai di zucchero",
            directions: "Per preparare la salsa Teriyaki, mescola la salsa di soia, il mirin, il sake e lo zucchero in una pentola. Cuoci a fuoco medio-basso fino a quando la salsa si addensa. Lasciala raffreddare prima di utilizzarla come condimento.",
            time: 20 ,
            category: "Salse",
            continent: "Asia"
            
            
        ),
        
    
        Recipe(
            name: "Salsa Pesto Genovese",
            image: "pesto",
            description: "Il pesto genovese è una salsa italiana fresca e aromatica, preparata con basilico fresco, pinoli, aglio, olio d'oliva e formaggio grana. È ideale per condire la pasta o come base per una bruschetta gustosa.",
            ingredients: "50g di foglie di basilico\n 30g di pinoli\n 2 spicchi d'aglio\n 50g di formaggio grana\n 150 ml di olio d'oliva",
            directions: "Per preparare il pesto genovese, frulla basilico, pinoli, aglio e formaggio grana in un mixer. Aggiungi gradualmente l'olio d'oliva fino a ottenere una consistenza cremosa. Usa questa salsa per condire la pasta o come base per antipasti.",
            time: 15,
            category: "Salse",
            continent: "Europa"
            
            
        ),
        
    ]
}
