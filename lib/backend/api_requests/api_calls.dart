import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? userEmail = '',
    String? userPassword = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: 'http://localhost:8080/api/v1/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
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
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://localhost:8080/api/v1/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
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
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'thread',
      apiUrl: 'http://localhost:8080/api/v1/thread',
      callType: ApiCallType.GET,
      headers: {},
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
    int? create,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'threadedit',
      apiUrl: 'http://localhost:8080/api/v1/thread/edit',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadlistCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'threadlist',
      apiUrl: 'http://localhost:8080/api/v1/thread/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreadcreateCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'threadcreate',
      apiUrl: 'localhost:8080/api/v1/thread/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ThreaddeleteCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'threaddelete',
      apiUrl: 'localhost:8080/api/v1/thread/delete/{threadId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
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
  }) {
    final commentList = _serializeJson(commentListJson);

    return ApiManager.instance.makeApiCall(
      callName: 'commentlist',
      apiUrl: 'http://localhost:8080/api/v1/comment/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentcreateCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'commentcreate',
      apiUrl: 'http://localhost:8080/api/v1/comment/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditcommentCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'editcomment',
      apiUrl: 'http://localhost:8080/api/v1/comment/edit',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletecommentCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'deletecomment',
      apiUrl: 'http://localhost:8080/api/v1/comment/delete/{commentId}',
      callType: ApiCallType.DELETE,
      headers: {},
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
