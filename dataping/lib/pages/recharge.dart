import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Recharge extends StatefulWidget {
  const Recharge({ Key? key }) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebViewLoad()
       
      );
  }
}

class WebViewLoad extends StatefulWidget {
 
  WebViewLoadUI createState() => WebViewLoadUI();
 
}
 
class WebViewLoadUI extends State<WebViewLoad>{
 
  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
     appBar: AppBar(
       backgroundColor: Color.fromARGB(185, 253, 49, 100),
      ),
    body: WebView(
      initialUrl: 'https://paytm.com/recharge',
      javascriptMode: JavascriptMode.unrestricted,
 
    )
  );
  }
}