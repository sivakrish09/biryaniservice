@isTest
global  class dog implements HttpCalloutMock {
  global  static HttpResponse respond(HttpRequest req)
  {
      HttpResponse response = new HttpResponse();
      response.setHeader('Content-Type', 'application/json');
      response.setBody('{"image":"https://biriyani.anoram.com/img/13.jpg"}');
      response.setStatusCode(200);
      return response;
  }
}
