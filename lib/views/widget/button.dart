import 'package:flutter/material.dart';

Widget TouchRipplesButton({void Function()? onTap,  Widget? child = const Text('Flat Button')}) {
  return // The InkWell wraps the custom flat button widget.
      InkWell(
    // When the user taps the button, show a snackbar.
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.all(12),
      child: child,
    ),
  );
}

class LoadingButton extends StatefulWidget {
  const LoadingButton({super.key});

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: 24),
              minimumSize: Size.fromHeight(72),
              shape: StadiumBorder()),
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 24,
                    )
                  ],
                )
              : Text("Login"),
          onPressed: () async {
            if (isLoading) return;
            setState(() {
              isLoading = true;
            });
            await Future.delayed(Duration(seconds: 3));
            setState(() {
              isLoading = false;
            });
          },
        ),
      );
  }
}

