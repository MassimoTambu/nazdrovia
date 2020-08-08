import {
  AchievementsCategory,
  AchievementsContainer,
} from "../models/achievement";

export const ACHIEVEMENTS: AchievementsContainer[] = [
  {
    category: AchievementsCategory.Principali,
    achievements: [
      {
        id: 0,
        title: "<b>SEI FUORI</b>",
        description: "Arriva a tre penalità",
        nasScore: 0,
      },
      {
        id: 1,
        title: "<b>LA TUA PRIMA VOLTA</b>",
        description: "Completa il tuo primo Nasdarovia",
        nasScore: 5,
      },
      {
        id: 3,
        title: "<b>DISONORE</b>",
        description: "Prendi una penalità",
        nasScore: 5,
      },
      {
        id: 4,
        title: "<b>BACIATO DAL CIELO</b>",
        description: "Perdi una penalità",
        nasScore: 10,
      },
      {
        id: 5,
        title: "<b>RAPIDITÀ DI FEGATO</b>",
        description:
          "Dopo la chiamata del Nasdarovia sei il primo che finisce il drink fra tutti i presenti",
        nasScore: 5,
      },
      {
        id: 6,
        title: "<b>STESSA MERDA, ALTRO GIORNO</b>",
        description:
          "Dopo una serata prendi una pagnotta dal panettiere all'alba",
        nasScore: 10,
      },
      {
        id: 7,
        title: "<b>L'INTERNAZIONALE</b>",
        description: "Chiama il Nasdarovia in un altra stato",
        nasScore: 10,
      },
      {
        id: 8,
        title: "<b>LAST MAN STANDING</b>",
        description: "Porta a casa un compagno ubriaco da solo",
        nasScore: 10,
      },
      {
        id: 9,
        title: "<b>MI OFFRO COME TRIBUTO</b>",
        description: "Chiama e completa un sacrificio",
        nasScore: 20,
      },
      {
        id: 10,
        title: "<b>PISCIACI ANCORA WILLY</b>",
        description: "Piscia su un animale vivente",
        nasScore: 5,
      },
      {
        id: 11,
        title: "<b>SUICIDIO ASSISTITO</b>",
        description:
          "Chiama il Nasdarovia quando nessun altro ha da bere e tu hai il bicchiere pieno",
        nasScore: 25,
      },
      {
        id: 12,
        title: "<b>ONE GAY ONE LITRE</b>",
        description: "Bevi un litro di vino",
        nasScore: 30,
      },
      {
        id: 13,
        title: "<b>STEEEEEEEVE</b>",
        description: "Bevi 3 vodka liscia in 4",
        nasScore: 50,
      },
      {
        id: 14,
        title: "<b>THANKSGIVING DAY</b>",
        description: "Diventa il tacchino",
        nasScore: 50,
      },
      {
        id: 15,
        title: "<b>TOTAL BLACKOUT</b>",
        description:
          "Fai serata con almeno 3 persone, e il giorno dopo nessuno si ricorda niente",
        nasScore: 75,
      },
      {
        id: 16,
        title: "<b>FAMOLO STRANO</b>",
        description: "Bevi con qualcos'altro dentro il bicchiere",
        nasScore: 10,
      },
      {
        id: 17,
        title: "<b>SCOTTY PIPPEN</b>",
        description: "Finisci alla goccia e centra il cestino",
        nasScore: 10,
      },
      {
        id: 18,
        title: "<b>WHEN WE ALL FALL ASLEEP WHERE DO WE GO?</b>",
        description: "Vai in blackout per la serata",
        nasScore: 20,
      },
    ],
  },
  {
    category: AchievementsCategory.Limited,
    achievements: [
      {
        id: 1,
        title: "<b>OH SHIT, HERE WE GO AGAIN</b>",
        description:
          "Completa due vinelli del cinese da 1 lt l'uno per due cinesi",
        nasScore: 30,
      },
      {
        id: 2,
        title: "<b>CIAO, SERA!</b>",
        description: "Completa 5 cinesi senza bere.",
        nasScore: 50,
      },
      {
        id: 3,
        title: "<b>OH SHIT, HERE WE GO AGAIN</b>",
        description:
          "Completa due vinelli del cinese da 1 lt l'uno per due cinesi",
        nasScore: 30,
      },
    ],
  },
  {
    category: AchievementsCategory.Segreti,
    achievements: [
      {
        id: 1,
        title: "<b>GNEE</b>",
        description: "Top Secret",
        nasScore: 10,
      },
    ],
  },
];
