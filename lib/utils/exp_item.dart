import 'package:portfolio_elsa/all.dart';

class ExpItem extends StatefulWidget {
  final String business;
  final String dates;
  final String infos;
  final String imageName;
  final bool isLeft;
  final List<Skill>? skills;

  const ExpItem({
    super.key,
    required this.business,
    required this.dates,
    required this.infos,
    required this.imageName,
    required this.isLeft,
    this.skills,
  });

  @override
  ExpItemState createState() => ExpItemState();
}

class ExpItemState extends State<ExpItem> {
  @override
  Widget build(BuildContext context) {
    bool orientation = context.mediaQuery.size.width > context.mediaQuery.size.height;

    if (orientation && widget.isLeft) {
      return buildLeft();
    }
    else if (orientation && !widget.isLeft) {
      return buildRight();
    }
    else {
      return buildColumn();
    }
  }
}

extension ExpItemHeader on State<ExpItem> {
  List<Widget> header() {
    return [
      Text(widget.business,
        style: TextStyle(
          color: context.colorScheme.onPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(widget.dates,
        style: TextStyle(
          color: context.colorScheme.onPrimary,
          decoration: TextDecoration.underline,
          decorationColor: context.colorScheme.onPrimary,
        ),
      )
    ];
  }
}

extension ExpItemInfo on State<ExpItem> {
  List<Widget> info() {
    return [
      HtmlText(text: widget.infos),
      widget.skills == null ? const SizedBox() :
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 5,
          runSpacing: 5,
          children: widget.skills!.map((skill) => skill.build(context)).toList(),
        ),
      ),
    ] ;
  }
}

extension ExpItemLogo on State<ExpItem> {
  Widget logo() {
    return Center(
      child: SizedBox(
        width: context.mediaQuery.size.width * 0.3,
        child: AspectRatio(
          aspectRatio: 3.5,
          child: Image(
            image: AssetImage(widget.imageName),
          ),
        ),
      ),
    );
  }
}

extension ExpItemLeft on State<ExpItem> {
  buildLeft() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: logo(),
        ),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                    width: 2,
                    color: context.colorScheme.onPrimary
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: header() + info(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

extension ExpItemRight on State<ExpItem> {
  buildRight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                    width: 2,
                    color: context.colorScheme.onPrimary
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: header() + info(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: logo(),
        ),
      ],
    );
  }
}

extension ExpItemColumn on State<ExpItem> {
  buildColumn() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: logo(),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: header(),
              ),
            ),
          ],
        ),
        Column(
          children: info(),
        ),
      ],
    );
  }
}