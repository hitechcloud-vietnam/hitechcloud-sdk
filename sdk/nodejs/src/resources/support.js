"use strict";

const { BaseResource } = require("./base");

class SupportResource extends BaseResource {
  async listTickets(params = {}) {
    return this._http.get("$/api/tickets");
  }

  async createTicket(data) {
    return this._http.post("$/api/tickets", data);
  }

  async getTicket(ticketNumber) {
    return this._http.get("$/api/tickets/{number}");
  }

  async replyTicket(ticketNumber, data) {
    return this._http.post("$/api/tickets/{number}", data);
  }

  async getAttachment(file) {
    return this._http.get(`/api/ticket/attachment/${file}`);
  }

  async openTicket(ticketNumber) {
    return this._http.put("$/api/tickets/{number}/open");
  }

  async closeTicket(ticketNumber) {
    return this._http.put("$/api/tickets/{number}/close");
  }

  async getDepartments() {
    return this._http.get("$/api/ticket/departments");
  }

  async listNews(params = {}) {
    return this._http.get("$/api/news");
  }

  async getNews(newsId) {
    return this._http.get("$/api/news/{news_id}");
  }

  async listKnowledgebase(params = {}) {
    return this._http.get("$/api/knowledgebase");
  }

  async getKnowledgebaseCategory(categoryId) {
    return this._http.get("$/api/knowledgebase/{category_id}");
  }

  async getKnowledgebaseArticle(articleId) {
    return this._http.get("$/api/knowledgebase/article/{article_id}");
  }

}

module.exports = { SupportResource };
