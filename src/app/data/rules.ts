import { Rule, RuleType } from "../models/rule";

export const rules: Rule[] = [
  {
    id: 0,
    number: 0,
    type: RuleType.Principali,
    description:
      "<b>Chi non ha il bere alcolico (<3%) non può chiamare.</b> Gli analcolici non sono considerati alcolici.",
  },
  {
    id: 1,
    number: 1,
    type: RuleType.Principali,
    description:
      "<b>Chi lo chiama deve avere almeno metà della quantità alcolica dell'avversario.</b> Chi ce l'ha pieno deve berlo TUTTO",
  },
  {
    id: 2,
    number: 2,
    type: RuleType.Principali,
    description:
      "‎<b>La persona beve se è riconosciuto il possesso del bicchiere,</b> quindi dopo averlo sorseggiato.",
  },
  {
    id: 3,
    number: 3,
    type: RuleType.Principali,
    description:
      "<b>‎Assaggiare un sorso</b> del bicchiere di un altro <b>non viene considerato come proprio.</b>",
  },
  {
    id: 4,
    number: 4,
    type: RuleType.Principali,
    description:
      "<b>Deve bere chiunque ha sentito la parola</b> e chi ha sentito la parola non può dirlo a sua volta ad un terzo.",
  },
  {
    id: 5,
    number: 5,
    type: RuleType.Principali,
    description: "‎<b>Il drink va finito entro 1 minuto.</b>",
  },
  {
    id: 6,
    number: 6,
    type: RuleType.Principali,
    description:
      "C’è il <b>limite di 2 chiamate consecutive a testa;</b> per poter richiamare bisogna aspettare prima una chiamata da un'altra persona.",
  },
  {
    id: 7,
    number: 7,
    type: RuleType.Principali,
    description:
      "<b>Chi ha ricevuto e chi ha detto il nas non può chiamarlo finché non ha finito il bicchiere e non ne ha un altro pieno.</b> Se viene richiamato non è valido, è accettato come segno di brindisi.",
  },
  {
    id: 8,
    number: 8,
    type: RuleType.Principali,
    description:
      "Chi non sa le regole ha il <b>diritto di chiedere quali siano prima di giocare.</b>",
  },
  {
    id: 9,
    number: 1,
    type: RuleType.Extra,
    title: "<b>CAPITAN RACHETE!</b>",
    description:
      "‎Assaggiare un sorso del bicchiere di un altro non viene considerato come proprio",
  },
  {
    id: 10,
    number: 2,
    type: RuleType.Extra,
    title: "<b>HIGH NOON!</b>",
    description:
      "‎Tutte le regole eccetto la 0) non valgono con il vinello del cinese.",
  },
  {
    id: 11,
    number: 3,
    type: RuleType.Extra,
    title: "<b>DURO A MORIRE!</b>",
    description:
      "Se dopo aver sboccato, ti fai un Nas alla goccia diventi il “Tacchino”. Per te, le regole 1,2,3,6 tra le Regole Principali non valgono.",
  },
  {
    id: 12,
    number: 4,
    type: RuleType.Extra,
    title: "<b>OLD TOKYO SANDBLASTER!</b>",
    description:
      "(Valido solo in presenza di un anziano) Se vengono bevuti due bicchieri alla goccia CONTEMPORANEAMENTE dopo aver chiamato un Nas, si ha il diritto di utilizzare una qualsiasi parola a scelta come se fosse un Nas, la parola deve essere confermata da uno dei saggi, e ogni qualvolta la parola venga nominata durante la serata, essa verrà considerata come un Nas effettivo (Sotto tutte le regole precedenti) (Il chiamante e il Saggio non possono usare quella parola come Nas).",
  },
  {
    id: 13,
    number: 5,
    type: RuleType.Extra,
    title: "<b>GRETA TUMBLR</b>",
    description:
      "‎Se due persone chiama il Nas nello stesso momento (senza mettersi d'accordo), il primo che finisce il bicchiere diventa Greta Tumberg e può decidere chi beve doppio al prossimo giro.",
  },
  {
    id: 14,
    number: 5.1,
    type: RuleType.Extra,
    description:
      "se due persone jinxano nello stesso momento, il primo che finisce da bere diventa Greta Tumblr ed è in grado di può decidere chi deve bere nasdrovia.",
  },
  {
    id: 15,
    number: 6,
    type: RuleType.Extra,
    title: "<b>L'ARES!</b>",
    description: "‎Puoi deciderti di astenerti dal gioco per sempre.",
  },
  {
    id: 16,
    number: 1,
    type: RuleType.Penalità,
    description: "‎Se non finisci il tuo quantitativo alcolico (1 penalità).",
  },
  {
    id: 17,
    number: 2,
    type: RuleType.Penalità,
    description:
      "‎Se chi l'ha chiamata non finisce il suo quantitativo alcolico (2 penalità).",
  },
  {
    id: 18,
    number: 3,
    type: RuleType.Penalità,
    description:
      "Chi è esterno dalla comunità italiana raddoppia della penalità.",
  },
  {
    id: 19,
    number: 4,
    type: RuleType.Penalità,
    description:
      "‎Se sbocchi mentre stai bevendo (e di conseguenza non finisci il drink) non prendi penalità.",
  },
  {
    id: 20,
    number: 5,
    type: RuleType.Penalità,
    description: "Le penalità non si rimuovono.",
  },
  {
    id: 21,
    number: 6,
    type: RuleType.Penalità,
    description:
      "‎Se una persona lo chiama quando non ha la base alcolica (senza scherzare) prende 1 penalità. Però se gli altri bevono il loro drink pensando sia un nas vero, chi l'ha chiamato prenderà 3 penalità.",
  },
  {
    id: 16,
    number: 7,
    type: RuleType.Penalità,
    description:
      "Chi raggiunge 3 penalità non potrà più partecipare al gioco e alle successive manifestazioni alcoliche.",
  },
  {
    id: 17,
    number: 1,
    type: RuleType.Sacrificio,
    description:
      "Un secondo compare può chiamare il sacrificio a chiunque del gruppo il quale si trovi in difficoltà. Colui a cui viene chiamato può rifiutare o accettare il Sacrificio.",
  },
  {
    id: 18,
    number: 2,
    type: RuleType.Sacrificio,
    description: "Chi chiama il sacrificio deve bere tutto in 10 secondi.",
  },
  {
    id: 19,
    number: 3,
    type: RuleType.Sacrificio,
    description: "Non esiste Sacrificio del Sacrificio.",
  },
];
