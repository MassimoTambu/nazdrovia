import { Rule, RulesCategory, RulesContainer } from "../models/rule";

export const rules: RulesContainer[] = [
  {
    title: RulesCategory.Principali,
    rules: [
      {
        id: 1,
        number: "0",
        description:
          "<b>Chi non ha il bere alcolico (<3%) non può chiamare.</b> Gli analcolici non sono considerati alcolici.",
      },
      {
        id: 2,
        number: "1",
        description:
          "<b>Chi lo chiama deve avere almeno metà della quantità alcolica dell'avversario.</b> Chi ce l'ha pieno deve berlo TUTTO",
      },
      {
        id: 3,
        number: "2",
        description:
          "‎<b>La persona beve se è riconosciuto il possesso del bicchiere,</b> quindi dopo averlo sorseggiato.",
      },
      {
        id: 4,
        number: "3",
        description:
          "<b>‎Assaggiare un sorso</b> del bicchiere di un altro <b>non viene considerato come proprio.</b>",
      },
      {
        id: 5,
        number: "4",
        description:
          "<b>Deve bere chiunque ha sentito la parola</b> e chi ha sentito la parola non può dirlo a sua volta ad un terzo.",
      },
      {
        id: 6,
        number: "5",
        description: "‎<b>Il drink va finito entro 1 minuto.</b>",
      },
      {
        id: 7,
        number: "6",
        description:
          "C’è il <b>limite di 2 chiamate consecutive a testa;</b> per poter richiamare bisogna aspettare prima una chiamata da un'altra persona.",
      },
      {
        id: 8,
        number: "7",
        description:
          "<b>Chi ha ricevuto e chi ha detto il nas non può chiamarlo finché non ha finito il bicchiere e non ne ha un altro pieno.</b> Se viene richiamato non è valido, è accettato come segno di brindisi.",
      },
      {
        id: 9,
        number: "8",
        description:
          "Chi non sa le regole ha il <b>diritto di chiedere quali siano prima di giocare.</b>",
      },
    ],
  },
  {
    title: RulesCategory.Extra,
    rules: [
      {
        id: 1,
        number: "1",
        title: "<b>CAPITAN RACHETE!</b>",
        description:
          "‎Assaggiare un sorso del bicchiere di un altro non viene considerato come proprio",
      },
      {
        id: 2,
        number: "2",
        title: "<b>HIGH NOON!</b>",
        description:
          "‎Tutte le regole eccetto la 0) non valgono con il vinello del cinese.",
      },
      {
        id: 3,
        number: "3",
        title: "<b>DURO A MORIRE!</b>",
        description:
          "Se dopo aver sboccato, ti fai un Nas alla goccia diventi il “Tacchino”. Per te, le regole 1,2,3,6 tra le Regole Principali non valgono.",
      },
      {
        id: 4,
        number: "4",
        title: "<b>OLD TOKYO SANDBLASTER!</b>",
        description:
          "(Valido solo in presenza di un anziano) Se vengono bevuti due bicchieri alla goccia CONTEMPORANEAMENTE dopo aver chiamato un Nas, si ha il diritto di utilizzare una qualsiasi parola a scelta come se fosse un Nas, la parola deve essere confermata da uno dei saggi, e ogni qualvolta la parola venga nominata durante la serata, essa verrà considerata come un Nas effettivo (Sotto tutte le regole precedenti) (Il chiamante e il Saggio non possono usare quella parola come Nas).",
      },
      {
        id: 5,
        number: "5",
        title: "<b>GRETA TUMBLR</b>",
        description:
          "‎Se due persone chiama il Nas nello stesso momento (senza mettersi d'accordo), il primo che finisce il bicchiere diventa Greta Tumberg e può decidere chi beve doppio al prossimo giro.",
      },
      {
        id: 6,
        number: "5.1",
        description:
          "se due persone jinxano nello stesso momento, il primo che finisce da bere diventa Greta Tumblr ed è in grado di può decidere chi deve bere nasdrovia.",
      },
      {
        id: 7,
        number: "6",
        title: "<b>L'ARES!</b>",
        description: "‎Puoi deciderti di astenerti dal gioco per sempre.",
      },
    ],
  },
  {
    title: RulesCategory.Penalità,
    prologue:
      "Si hanno un massimo di tre 3 penalità, alla terza non sei più parte del gruppo. Le penalità si possono prendere:",
    rules: [
      {
        id: 1,
        number: "1",

        description:
          "‎Se non finisci il tuo quantitativo alcolico (1 penalità).",
      },
      {
        id: 2,
        number: "2",

        description:
          "‎Se chi l'ha chiamata non finisce il suo quantitativo alcolico (2 penalità).",
      },
      {
        id: 3,
        number: "3",

        description:
          "Chi è esterno dalla comunità italiana raddoppia della penalità.",
      },
      {
        id: 4,
        number: "4",

        description:
          "‎Se sbocchi mentre stai bevendo (e di conseguenza non finisci il drink) non prendi penalità.",
      },
      {
        id: 5,
        number: "5",

        description: "Le penalità non si rimuovono.",
      },
      {
        id: 6,
        number: "6",

        description:
          "‎Se una persona lo chiama quando non ha la base alcolica (senza scherzare) prende 1 penalità. Però se gli altri bevono il loro drink pensando sia un nas vero, chi l'ha chiamato prenderà 3 penalità.",
      },
      {
        id: 7,
        number: "7",

        description:
          "Chi raggiunge 3 penalità non potrà più partecipare al gioco e alle successive manifestazioni alcoliche.",
      },
    ],
  },
  {
    title: RulesCategory.Sacrificio,
    rules: [
      {
        id: 1,
        number: "1",
        description:
          "Un secondo compare può chiamare il sacrificio a chiunque del gruppo il quale si trovi in difficoltà. Colui a cui viene chiamato può rifiutare o accettare il Sacrificio.",
      },
      {
        id: 2,
        number: "2",
        description: "Chi chiama il sacrificio deve bere tutto in 10 secondi.",
      },
      {
        id: 3,
        number: "3",
        description: "Non esiste Sacrificio del Sacrificio.",
      },
      {
        id: 4,
        number: "Beta*",
        title: "<b>DUELLO</b>",
        description:
          "Una persona può chiamare il duello ad una seconda persona se entrambe le persone hanno lo stesso drink e la stessa quantità di alcool o se entrambe le persone accettino che i loro drink siano simili. La vittoria ancora da stipulare. Entrambi bevono il loro drink dopo un countdown di 3 secondi.",
      },
    ],
  },
  {
    title: RulesCategory.Bevuta,
    rules: [
      {
        id: 1,
        description:
          "Non puoi smettere di bere, si può bere lentamente ma si deve bere di continuo.<br><br>⅓ di bicchiere da 0,5l di birra equivale a 1 short liscio di superalcolico.<br>1 drink qualunque equivale a 1 pinta di birra 0,5l che equivale a 1 calice di vino.<br>1 short equivale ad ⅓ di un drink.<br>Futuri cambiamenti Delle regole vengono effettuate in riunione Privata dagli anziani (Gio, Ava, Massi).",
      },
    ],
  },
];
