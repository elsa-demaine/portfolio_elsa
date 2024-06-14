import 'package:flutter/material.dart';
import 'package:portfolio_elsa/Utils/routing.dart';
import 'package:portfolio_elsa/generated/l10n.dart';

AppBar myAppBar(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    title:
    IconButton(
      icon: Image.asset(
          'images/Logo_ED.png',
          height: 50,
          alignment: Alignment.center),
      onPressed: () {
        navigateTo(context, "/home");
      },
      hoverColor: Colors.transparent,
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Theme.of(context).colorScheme.onPrimary,
    actions: [
      MenuBar(
        style: const MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(Colors.transparent),
          elevation: WidgetStatePropertyAll<double>(0),
        ),
        children: [
          PopupMenuButton(
            color: Theme.of(context).colorScheme.secondary,
            padding: EdgeInsets.zero,
            position: PopupMenuPosition.under,
            tooltip: S.of(context).menu,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                  child: ListTile(
                    hoverColor: Colors.transparent,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    title: Text(S.of(context).home, textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.of(context).pop();
                      navigateTo(context, "/home");
                    },
                  )),
              PopupMenuItem(
                child: ListTile(
                  hoverColor: Colors.transparent,
                  textColor: Theme.of(context).colorScheme.onSecondary,
                  title:
                  Text(S.of(context).hobbies, textAlign: TextAlign.center),
                  onTap: () {
                    Navigator.of(context).pop();
                    navigateTo(context, "/hobbies");
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}
