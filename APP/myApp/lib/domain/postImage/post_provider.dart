import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:praticesig/domain/postImage/post.dart';

var host2 = Uri.parse(
    "https://osamhack2021-ai-app-web-canary-canary-g4x9r75r6fq49-4000.githubpreview.dev/img/upload");
var host3 = Uri.parse(
    "https://osamhack2021-ai-app-web-canary-canary-g4x9r75r6fq49-4000.githubpreview.dev/img/output");

//통신
class PostProvider extends GetConnect {
  Future<http.Response> postImage(Map data) => http.post(host2,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: data);
  Future<http.Response> getImage() => http.get(host3);
}
