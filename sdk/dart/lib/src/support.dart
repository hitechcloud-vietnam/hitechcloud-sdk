import 'http_client.dart';

/// Support: tickets, departments, news, knowledgebase
class SupportResource {
  final HttpClient httpClient;
  SupportResource(this.httpClient);

  /// GET /api/tickets - List support tickets
  Future<Map<String, dynamic>> listTickets([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/tickets', params);
  }

  /// POST /api/tickets - Create new support ticket
  Future<Map<String, dynamic>> createTicket([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/tickets', params);
  }

  /// GET /api/tickets/{number} - Get ticket details with replies
  Future<Map<String, dynamic>> getTicket([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/tickets/{number}', params);
  }

  /// POST /api/tickets/{number} - Reply to ticket
  Future<Map<String, dynamic>> reply([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/tickets/{number}', params);
  }

  /// GET /api/ticket/attachment/{file} - Get ticket attachment
  Future<Map<String, dynamic>> getAttachment([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/ticket/attachment/{file}', params);
  }

  /// PUT /api/tickets/{number}/open - Re-open closed ticket
  Future<Map<String, dynamic>> reopen([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/tickets/{number}/open', params);
  }

  /// PUT /api/tickets/{number}/close - Close ticket
  Future<Map<String, dynamic>> close([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/tickets/{number}/close', params);
  }

  /// GET /api/ticket/departments - List ticket departments
  Future<Map<String, dynamic>> listDepartments([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/ticket/departments', params);
  }

  /// GET /api/news - List news
  Future<Map<String, dynamic>> listNews([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/news', params);
  }

  /// GET /api/news/{news_id} - Get news item details
  Future<Map<String, dynamic>> getNews([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/news/{news_id}', params);
  }

  /// GET /api/knowledgebase - List knowledgebase categories
  Future<Map<String, dynamic>> listKnowledgebaseCategories([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/knowledgebase', params);
  }

  /// GET /api/knowledgebase/{category_id} - Get category with articles
  Future<Map<String, dynamic>> getKnowledgebaseCategory([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/knowledgebase/{category_id}', params);
  }

  /// GET /api/knowledgebase/article/{article_id} - Get article details
  Future<Map<String, dynamic>> getKnowledgebaseArticle([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/knowledgebase/article/{article_id}', params);
  }

}
