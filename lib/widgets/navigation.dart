import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_routes.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => PageTwo(),
                //     settings: RouteSettings(arguments: "Mohammad"),
                //   ),
                // );

                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => PageTwo(),
                //     settings: RouteSettings(arguments: 'Mohammad'),
                //   ),
                // );

                Navigator.of(
                  context,
                ).pushNamed(AppRoutes.pageTwo, arguments: "Mohammad");
              },
              child: Text('Go to page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).pushReplacement(MaterialPageRoute(builder: (_) => PageTwo()));

                // Navigator.of(context).pushReplacementNamed('pageTwo');

                Navigator.of(context).popAndPushNamed(AppRoutes.pageTwo);
              },
              child: Text('Go to page 2 (Home page)'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);

    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to page 3'),
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (_) => PageThree()));

                Navigator.of(context).pushNamed(AppRoutes.pageThree);
              },
            ),
            ElevatedButton(
              child: Text('Back to page 1'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Go to page 3 and remove all pages (Home page)'),
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => PageThree()),
                //   (route) => false,
                // );

                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.pageThree,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Back to page 2'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Back to page 1'),
              onPressed: () {
                // Navigator.of(context)
                //   ..pop()
                //   ..pop();

                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}

///Navigator.of(context)
///*push
///*pushNamed
///*pushReplacement
///*pushReplacmentNamed
///*pushAndRemoveUntil
///*pushNamedAndRemoveUntil
///*pop
///*popUntil
///*popAndPushNamed
