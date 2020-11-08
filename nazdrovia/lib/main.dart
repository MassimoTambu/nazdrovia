import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/app_state.dart';
import 'package:nazdrovia/router/naz_route_information_parser.dart';
import 'package:nazdrovia/router/naz_router_delegate.dart';
import 'package:nazdrovia/shared/utilities/utilities.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(NazdroviaApp());
}

/*
NOTA: questi appunti sono dedicati a spiegare come funziona Navigator 2.0 senza
innerRoutes (per ora).

Uso del Navigator 2.0
Ci sono due modi per navigare in un applicativo web:
- interazione con l'app.
- interazione con il browser.

Queste sono le classi principali utilizzate:
- L'appState (RouteAppState)
- Il RouterDelegate (NazRouterDelegate)
- Il RouteInformationParser (NazRouteInformationParser)

L'appState serve per tenere in memoria qual'è per esempio la pagina selezionata
e provvede a notificare il suo stato dove viene instanziata.

Il RouterDelegate invece gestisce la lista delle pagine che andremo
a visualizzare e ci fornisce dei metodi che saranno eseguiti in determinate
situazioni come "onPopPage":
- "setNewRoutePath" viene chiamato quando andiamo a modificare e inviare l'url
  nella barra del browser. Questo metodo è preceduto da "parseRouteInformation"
  di RouteInformationParser il quale, dato l'url, dovrà identificare a quale
  pagina corrisponda e ritornarlo. Dato il path identificato il nostro metodo
  dovrà notificare l'appState del nuovo path.
- "currentConfiguration" è un getter che notificherà il metodo
  "restoreRouteInformation" di RouteInformationParser quando stiamo navigando
  interagendo con l'app (tipo onTap bottone che deve portare alla nuova pagina).
Infine RouterDelegate aggiornerà la Pila delle pagine ai vari cambiamenti.
Ricorda che ogni pagina nella pila deve essere dotata di una Key identificativa.

Il RouteInformationParser si interfaccia con la barra dell'url del browser.
  - "parseRouteInformation" viene eseguito quando cambiamo l'url, la identifica
  e fornisce al metodo "setNewRoutePath" di RouterDelegate una pagina dato l'url
  identificato.
  - "restoreRouteInformation" viene eseguito SOLO se il getter
    "currentConfiguration" di RouterDelegate viene creato. Ottenendo da esso
    la pagina corrente fornisce alla barra dell'url del browser il path di
    riferimento e crea una history per il browser navigabile coi bottoni.

Se queste classi sono state implementate correttamente avremo una navigazione
funzionante utilizzando le due interazioni.

Come fare per navigare verso un'altra pagina quando premo un bottone?
Con Navigator 1.0 la navigazione era molto immediata ma meno centralizzata
perché ci bastava scrivere 'Navigator.of(context).push(path);'.
Con Navigator 2.0 dobbiamo cambiare il selectedPath dell'appState del
RouterDelegate. Ci sono due principali soluzioni: trasportare un metodo onTap
fino alla lista di pagine nella classe Delegate (sconsigliato), oppure
creare un Provider, visto che il Delegate eredita il ChangeNotifier, e chiamare
'Provider.of<NazRouteDelegate>(context, listen: false)
  .routeAppState.selectedPath = newPath;'.
Quindi dobbiamo creare un ChangeNotifierProvider<NazRouterDelegate>.value(...);
utilizziamo il '.value' perché NON andremo a creare un Delegate da zero ma esso
sarà anche utilizzato nella MaterialApp.router(...).
*/
class NazdroviaApp extends StatelessWidget {
  final _routerDelegate = NazRouterDelegate();
  final _routeInformationParser = NazRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (context) => AppState(),
        ),
        ChangeNotifierProvider<NazRouterDelegate>.value(
          value: _routerDelegate,
        ),
      ],
      child: _MaterialAppManager(_routerDelegate, _routeInformationParser),
    );
  }
}

class _MaterialAppManager extends StatelessWidget {
  final NazRouterDelegate _routerDelegate;
  final NazRouteInformationParser _routeInformationParser;

  const _MaterialAppManager(this._routerDelegate, this._routeInformationParser);

  @override
  Widget build(BuildContext context) {
    final lightTheme = Provider.of<AppState>(context, listen: false)
        .themes
        .buildLightThemeData();
    final darkTheme = Provider.of<AppState>(context, listen: false)
        .themes
        .buildDarkThemeData();
    final lsThemeKey = Provider.of<AppState>(context, listen: false)
        .localStorage
        .getItem(Themes.lsThemeKey);
    final themeMode =
        Provider.of<AppState>(context).themes.currentTheme(lsThemeKey);
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
