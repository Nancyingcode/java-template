package bx_commodity.test;

public class Print {
    private String scope;
    private static boolean turnON = true;

    Print(String scope){
        this.scope = scope;
    }

    public void print(Object content){
        if(turnON) System.out.print("---["+this.scope+"]---"+content);
    }

    public void println(Object content){
        if(turnON) System.out.println("---["+this.scope+"]---"+content);
    }
}