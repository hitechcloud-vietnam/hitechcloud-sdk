"use strict";

const { BaseResource } = require("./base");

class SupportResource extends BaseResource {
  async listTickets(params = {}) {
    return this._http.get("/api/tickets", params);
  }

  async createTicket(data) {
    return this._http.post("/api/tickets", data);
  }

  async getTicket(ticketNumber) {
    return this._http.get(`/api/tickets/${ticketNumber}`);
  }

  async reply(ticketNumber, message) {
    return this._http.post(`/api/tickets/${ticketNumber}`, { message });
  }

  async getAttachment(file) {
    return this._http.get(`/api/ticket/attachment/${file}`);
  }

  async reopen(ticketNumber) {
    return this._http.put(`/api/tickets/${ticketNumber}/open`);
  }

  async close(ticketNumber) {
    return this._http.put(`/api/tickets/${ticketNumber}/close`);
  }

  async listDepartments() {
    return this._http.get("/api/ticket/departments");
  }

  async listNews() {
    return this._http.get("/api/news");
  }

  async getNews(newsId) {
    return this._http.get(`/api/news/${newsId}`);
  }

  async listKnowledgebaseCategories() {
    return this._http.get("/api/knowledgebase");
  }

  async getKnowledgebaseCategory(categoryId) {
    return this._http.get(`/api/knowledgebase/${categoryId}`);
  }

  async getKnowledgebaseArticle(articleId) {
    return this._http.get(`/api/knowledgebase/article/${articleId}`);
  }
}

module.exports = { SupportResource };
