import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;


public class ApiTestRunner {
    @Test
    public void testParallel(){
        Results results = Runner.path("classpath:features").tags("@Feature1").parallel(100);//executer le test, tag = tagger les test avec son nom, Paralelle =1 car on a un seul test, sinon on met le nb des test que je veux executer en paralle, si on veut pas executer en paralle en met 1
        // classe path: path du projet
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);//si test KO elle renvoie nom de test KO avec getErrorMessages;
    }
}