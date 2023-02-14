public without sharing class  dogRandomImage {
    @AuraEnabled (cacheable=true)
    public static string getBiRandomImage() {
    	Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://biriyani.anoram.com/get');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response.getBody();
    }
}
