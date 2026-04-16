import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class ResumeScreen extends StatefulWidget {
  final int initialPage;

  const ResumeScreen({Key? key, this.initialPage = 3}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  late PdfViewerController _pdfController;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfViewerController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pdfController.jumpToPage(widget.initialPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
        backgroundColor: const Color(0xFF1E4FA1),
      ),
      body: SfPdfViewer.asset(
        'assets/Quran.pdf',
        controller: _pdfController,
        scrollDirection: PdfScrollDirection.horizontal,
      ),
    );
  }
}