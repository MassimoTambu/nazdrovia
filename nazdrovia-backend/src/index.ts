import cors from 'cors';
import express from 'express';
import { Consts } from './models/consts';
import { RouterAchievements } from './routes/achievements';
import { RouterPlayers } from './routes/players';
import { RouterRules } from './routes/rules';

// const bodyParser = require("body-parser");

// Create a new express app instance
const app: express.Application = express();

app.use(cors());
app.use(Consts.ACHIEVEMENTS, RouterAchievements);
app.use(Consts.PLAYERS, RouterPlayers);
app.use(Consts.RULES, RouterRules);

// app.use(bodyParser.urlencoded({ extended: true }));
// app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(Consts.PORT, () => {
  // tslint:disable-next-line:no-console
  console.log(`App is listening on ${Consts.BASE_URL}`);
});
