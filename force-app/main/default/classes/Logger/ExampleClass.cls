public inherited sharing class ExampleClass {
    private static Log logger = Log.get();
     
    public ExampleClass(){
        logger.add('ExampleClass Constructed');
    }
     
    public static void exampleMethod(){
        // Do some work
        logger.add('Another Log statement');
        try {
            insert new Account();
        } catch (DMLException dmle){
            // this will add the current exception to the list and publish immediately
            logger.publish(dmle);
        }
        // if we dont catch a DML Exception, ensure we publish the logs
        logger.publish();
    }
}