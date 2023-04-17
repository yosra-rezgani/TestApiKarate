import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;


public class ApiTestRunner {
    @Test
    public void testParallel(){
        Results results = Runner.path("classpath:features").tags("@get").parallel(1);//executer le test, tag = tagger les test avec son nom, Paralelle =1 car on a un seul test, sinon on met le nb des test que je veux executer en paralle, si on veut pas executer en paralle en met 1
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);//si test KO elle renvoie nom de test KO avec getErrorMessages;
    }
}