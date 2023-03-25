import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? userPassword = '',
    String? name = '',
  }) {
    final body = '''
{
  "username": "${userName}",
  "password": "${userPassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: 'http://localhost:8080/api/v1/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? userEmail = '',
    String? userPassword = '',
  }) {
    final body = '''
{
  "username": "${userEmail}",
  "password": "${userPassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://localhost:8080/api/v1/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadCall {
  static Future<ApiCallResponse> call({
    String? thread = '',
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'thread',
      apiUrl: 'http://localhost:8080/api/v1/thread',
      callType: ApiCallType.GET,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadeditCall {
  static Future<ApiCallResponse> call({
    dynamic? editThreadJson,
    String? userName = '',
    String? password = '',
    int? threadId,
    String? threadName = '',
    String? threadDescription = '',
    String? dateCreated = '',
  }) {
    final editThread = _serializeJson(editThreadJson);
    final body = '''
{
  "threadId": "${threadId}",
  "threadName": "${threadName}",
  "threadDescription": "${threadDescription}",
  "dateCreated": "${dateCreated}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'threadedit',
      apiUrl: 'http://localhost:8080/api/v1/thread/edit',
      callType: ApiCallType.POST,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadlistCall {
  static Future<ApiCallResponse> call({
    String? password = '',
    String? userName = '',
    int? numItems,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'threadlist',
      apiUrl: 'http://localhost:8080/api/v1/thread/list',
      callType: ApiCallType.GET,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadcreateCall {
  static Future<ApiCallResponse> call({
    String? threadName = '',
    String? threadDescription = '',
    String? dateCreated = '',
    String? userName = '',
    String? password = '',
  }) {
    final body = '''
{
  "threadName": "${threadName}",
  "threadDescription": "${threadDescription}",
  "dateCreated": "${dateCreated}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'threadcreate',
      apiUrl: 'http://localhost:8080/api/v1/thread/create',
      callType: ApiCallType.POST,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreaddeleteCall {
  static Future<ApiCallResponse> call({
    int? threadId,
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'threaddelete',
      apiUrl: 'http://localhost:8080/api/v1/thread/delete/{threadId}',
      callType: ApiCallType.DELETE,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {
        'threadId': threadId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentlistCall {
  static Future<ApiCallResponse> call({
    dynamic? commentListJson,
    int? numItems = 0,
    String? userName = '',
    String? password = '',
  }) {
    final commentList = _serializeJson(commentListJson);

    return ApiManager.instance.makeApiCall(
      callName: 'commentlist',
      apiUrl: 'http://localhost:8080/api/v1/comment/list',
      callType: ApiCallType.GET,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentcreateCall {
  static Future<ApiCallResponse> call({
    String? commentTitle = '',
    String? commentContent = '',
    String? dateCreated = '',
    String? userName = '',
    String? password = '',
  }) {
    final body = '''
{
  "commentTitle": "${commentTitle}",
  "commentContent": "${commentContent}",
  "dateCreated": "${dateCreated}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'commentcreate',
      apiUrl: 'http://localhost:8080/api/v1/comment/create',
      callType: ApiCallType.POST,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditcommentCall {
  static Future<ApiCallResponse> call({
    dynamic? editCommentJson,
    String? password = '',
    String? userName = '',
    int? threadId,
    int? commentId,
    String? commentTitle = '',
    String? commentContent = '',
    String? dateCreated = '',
  }) {
    final editComment = _serializeJson(editCommentJson);
    final body = '''
{
  "threadId": ${threadId},
  "commentId": ${commentId},
  "commentTitle": "${commentTitle}",
  "commentContent": "${commentContent}",
  "dateCreated": "${dateCreated}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editcomment',
      apiUrl: 'http://localhost:8080/api/v1/comment/edit',
      callType: ApiCallType.POST,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletecommentCall {
  static Future<ApiCallResponse> call({
    int? commentId,
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deletecomment',
      apiUrl: 'http://localhost:8080api/v1/comment/delete/{commentId}',
      callType: ApiCallType.DELETE,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {
        'commentId': commentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UsereditCall {
  static Future<ApiCallResponse> call({
    dynamic? userJson,
    String? userName = '',
    String? password = '',
  }) {
    final user = _serializeJson(userJson);

    return ApiManager.instance.makeApiCall(
      callName: 'useredit',
      apiUrl: 'http://localhost:8080/api/v1/user/edit',
      callType: ApiCallType.POST,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserlistCall {
  static Future<ApiCallResponse> call({
    int? numItems = 0,
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'userlist',
      apiUrl: 'http://localhost:8080/api/v1/user/list',
      callType: ApiCallType.GET,
      headers: {
        'username': '${userName}',
        'password': '${password}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
