import 'package:portfolio_elsa/all.dart';

AppBar myAppBar(BuildContext context, String title) {
  bool isDark = darkNotifier.value;

  return AppBar(
    automaticallyImplyLeading: false,
    title: IconButton(
      icon: Image(
          image: context.isDark ? const AssetImage('assets/images/Logo_ED_White.png') : const AssetImage('assets/images/Logo_ED.png'),
          height: 50,
          alignment: Alignment.center),
      onPressed: () {
        navigateTo(context, "/home");
      },
      hoverColor: Colors.transparent,
    ),
    backgroundColor: context.colorScheme.primary,
    foregroundColor: context.colorScheme.onPrimary,
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
            color: context.colorScheme.secondary,
            padding: EdgeInsets.zero,
            position: PopupMenuPosition.under,
            tooltip: S.current.menu,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.menu,
                color: context.colorScheme.onPrimary,
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  //Align text with switch widget
                  leading: const SizedBox(),
                  hoverColor: Colors.transparent,
                  title: Text(S.current.home),
                  //Align text with switch widget
                  trailing: const SizedBox(),
                  onTap: () {
                    context.navigator.pop();
                    navigateTo(context, "/home");
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  //Align text with switch widget
                  leading: const SizedBox(),
                  hoverColor: Colors.transparent,
                  title: Text(S.current.hobbies),
                  //Align text with switch widget
                  trailing: const SizedBox(),
                  onTap: () {
                  context.navigator.pop();
                  navigateTo(context, "/hobbies");
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  //Align text with switch widget
                  leading: const SizedBox(),
                  hoverColor: Colors.transparent,
                  title: Text(S.current.faqTitle),
                  //Align text with switch widget
                  trailing: const SizedBox(),
                  onTap: () {
                    context.navigator.pop();
                    navigateTo(context, "/faqs");
                  },
                ),
              ),
              PopupMenuItem(
                child: SwitchListTile.adaptive(
                  hoverColor: Colors.transparent,
                  title: Text(S.current.theme),
                  secondary: const Icon(Icons.brightness_medium_sharp),
                  thumbColor: WidgetStatePropertyAll(context.colorScheme.onTertiary ),
                  thumbIcon: WidgetStatePropertyAll(
                    isDark ?
                      Icon(Icons.dark_mode_sharp, color: context.colorScheme.tertiary,) :
                      Icon(Icons.light_mode_sharp, color: context.colorScheme.tertiary,),
                  ),
                  inactiveTrackColor: context.colorScheme.tertiary,
                  value: isDark,
                  onChanged: (bool? value) {
                    isDark = !isDark;
                    darkNotifier.value = isDark;
                    context.navigator.pop();
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
