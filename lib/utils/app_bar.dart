import 'package:flutter/material.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/all.dart';

AppBar myAppBar(BuildContext context, String title) {
  bool isDark = darkNotifier.value;

  return AppBar(
    automaticallyImplyLeading: false,
    title: IconButton(
      icon: Image.asset(
          Theme.of(context).colorScheme.brightness == Brightness.light ? 'assets/images/Logo_ED.png' : 'assets/images/Logo_ED_White.png',
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
      Transform.scale(
        scale: .75,
        child: const DropdownLang(),
      ),
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
                  //Align text with switch widget
                  leading: const SizedBox(),
                  hoverColor: Colors.transparent,
                  title: Text(S.of(context).home),
                  //Align text with switch widget
                  trailing: const SizedBox(),
                  onTap: () {
                    Navigator.of(context).pop();
                    navigateTo(context, "/home");
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  //Align text with switch widget
                  leading: const SizedBox(),
                  hoverColor: Colors.transparent,
                  title: Text(S.of(context).hobbies),
                  //Align text with switch widget
                  trailing: const SizedBox(),
                  onTap: () {
                  Navigator.of(context).pop();
                  navigateTo(context, "/hobbies");
                  },
                ),
              ),
              PopupMenuItem(
                child: SwitchListTile.adaptive(
                  hoverColor: Colors.transparent,
                  title: Text(S.of(context).theme),
                  secondary: const Icon(Icons.brightness_medium_sharp),
                  thumbColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onTertiary ),
                  thumbIcon: WidgetStatePropertyAll(
                    isDark ?
                      Icon(Icons.dark_mode_sharp, color: Theme.of(context).colorScheme.tertiary,) :
                      Icon(Icons.light_mode_sharp, color: Theme.of(context).colorScheme.tertiary,),
                  ),
                  inactiveTrackColor: Theme.of(context).colorScheme.tertiary,
                  value: isDark,
                  onChanged: (bool? value) {
                    isDark = !isDark;
                    darkNotifier.value = isDark;
                    Navigator.of(context).pop();
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
