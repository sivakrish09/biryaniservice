@isTest
public class dogRandomImageTest {
    @isTest
    
    Static Void TestFunName()
    {
        test.setMock(HttpCalloutMock.class, new dog());
        string response = dogRandomImage.getBiRandomImage();
        string result = '{"image":"https://biriyani.anoram.com/img/13.jpg"}';
        system.assertEquals(response, result);
       
    }

}
