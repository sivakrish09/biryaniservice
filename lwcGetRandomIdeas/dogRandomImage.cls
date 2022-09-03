public without sharing class  dogRandomImage {
	// briyani api calling
    @AuraEnabled (cacheable=true)
    public static string getBiRandomImage() {
		
    	Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://biriyani.anoram.com/get');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response.getBody();
    }
	// dog api calling
	
       @AuraEnabled (cacheable=true)
    public static string getDogRandomImage() {
		
    	Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dog.ceo/api/breeds/image/random');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response.getBody();
    }
	// motivational quotes displaying
    @AuraEnabled (cacheable=true)
    public static string getRandomQuote()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://free-quotes-api.herokuapp.com');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response.getBody();
    }
}
