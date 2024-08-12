import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';

class BookPdfPage extends StatefulWidget {
  final String pdfUrl;

  const BookPdfPage({
    super.key,
    required this.pdfUrl,
  });

  @override
  _BookPdfPageState createState() => _BookPdfPageState();
}

class _BookPdfPageState extends State<BookPdfPage> {
  late Future<File> _pdfFile;

  @override
  void initState() {
    super.initState();
    _pdfFile = _downloadPdf(widget.pdfUrl);
  }

  Future<File> _downloadPdf(String url) async {
    try {
      final dir = await getTemporaryDirectory();
      final filePath = '${dir.path}/temp.pdf';

      final dio = Dio();
      dio.options.responseType = ResponseType.stream;
      dio.options.receiveTimeout = 60000 as Duration?; // 60 seconds

      final response = await dio.get(
        url,
        options: Options(
          responseType: ResponseType.stream,
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to download PDF: ${response.statusCode}');
      }

      final file = File(filePath);
      final raf = file.openSync(mode: FileMode.write);
      await response.data.pipe(raf);
      raf.close();
      return file;
    } catch (e) {
      print('Error downloading PDF: $e');
      throw Exception('Failed to download PDF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book PDF'),
      ),
      body: FutureBuilder<File>(
        future: _pdfFile,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading PDF: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No PDF available'));
          } else {
            return PDFView(
              filePath: snapshot.data!.path,
              enableSwipe: true,
              swipeHorizontal: true,
              autoSpacing: false,
              pageFling: true,
              pageSnap: true,
              fitPolicy: FitPolicy.BOTH,
            );
          }
        },
      ),
    );
  }
}
