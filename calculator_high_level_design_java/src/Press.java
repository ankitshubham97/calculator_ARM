/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cs1140158
 */
public class Press {
    NodeStack prim_stack=new NodeStack();
    NodeStack sec_stack=new NodeStack();
    NodeStack tert_stack=new NodeStack();
    String exp="";
    String exp2="";
    VariableArray array=new VariableArray();
    int priority(char c){
        if(c=='-'){
            return 4;
        }
        else if(c=='+'){
            return 3;
        }
        else if(c=='*'){
            return 2;
        }
        else if(c=='/'){
            return 1;
        }
        else return 0;
    }
    void manageDigits(){
        //user entered data;goes in prim_st
        int i=10;
        Object v1,v2;
        sec_stack.push(prim_stack.pop());
        while(!prim_stack.isEmpty()){
            v1=prim_stack.pop();
            v2=sec_stack.pop();
            if(v1 instanceof Integer && v2 instanceof Integer){
                //if continuous digits found,then joined them to form number and pushed back the new number into sec_st
                sec_stack.push(i*(int)v1+(int)v2);
                i*=10;
            }
            else{
                //if continuous digits not found,then simple pop from prim_st and push into sec_st.
                i=10;
                sec_stack.push(v2);
                sec_stack.push(v1);
            }
        }
        while(!sec_stack.isEmpty()){
            prim_stack.push(sec_stack.pop());
        }
        //all digit-managed data in sec_st for now.
    }
    void manageUnary(){
        //all digit-managed data in sec_st
        Object v1,v2,v3;
        sec_stack.push(prim_stack.pop());
        while(!prim_stack.isEmpty()){
            v1=prim_stack.top();
            v2=sec_stack.top();
            if((v1=='+'||v1=='-'||v1=='*'||v1=='/')&&(v2=='+'||v2=='-')){
                //control enters here if found the patten: [-+*/][-+] (written as regex)
                v1=sec_stack.pop();
                v2=sec_stack.pop();
                if(v1=='+'){
                    //if [-+*/]+ is found neglect '+'. e.g.: 4,*,+,5 will be processed to 4,*,5
                    sec_stack.push(v2);
                }
                if(v1=='-'){
                    //if [-+*/]- is found, multiply the number followed by '-' with -1. e.g.: 4,*,-,5 will be processed to 4,*,-5
                    Integer tmp=(int)v2;
                    tmp*=-1;
                    sec_stack.push(tmp);
                }
            }
            else{
                //control enters here if not found the patten: [-+*/][-+] (written as regex)
                //simple pop from prim_st and push to sec_stack.
                sec_stack.push(prim_stack.pop());
            }
        }
        if(sec_stack.top()=='+'){
            //handles the first char;if it is '+', ignores this
            sec_stack.pop();
        }
        if(sec_stack.top()=='-'){
            //handles the first char;if it is '-', multiply the number followed by '-' with -1.
            sec_stack.pop();
            v1=sec_stack.pop();
            Integer tmp=(int)v1;
            tmp=tmp*-1;
            sec_stack.push(tmp);
        }
    }
    void evaluate(){
        this.standardise();
        this.conv_postfix();
        this.calculate();
    }
    void standardise(){
        this.manageDigits();
        this.manageUnary();
    }
    void conv_postfix(){
        //infix notation data in sec_stack
        //postfix noataion data but in reversed manner will be in prim_stack
        //temporary storage of operators in tert_stake for conversion purpose
        Object elem1;
        Object elem2;
        while(!sec_stack.isEmpty()){
            //elem1 contains token from infix notation
            elem1=sec_stack.pop();
            if(elem1!='+'&&elem1!='-'&&elem1!='*'&&elem1!='/'){
                //if elem1 is an operand, then simply push into prim_stack
                prim_stack.push(elem1);
            }
            else{
                //if elem1 is operator, push it into tert_stack only if 
                //the top of the stack has an operator with a lower precedence.
                //Else pop all out from tert_stack and push in prim_stack and at the end push that 
                //operator into the tert_stack.
                if(!tert_stack.isEmpty()){
                    
                    while(priority((char)elem1)>=priority((char)tert_stack.top())){
                        elem2 = tert_stack.pop();
                        prim_stack.push(elem2);
                        if(tert_stack.isEmpty()){
                            break;
                        }
                    }
                    tert_stack.push(elem1);  
                    
                }
                else{
                     tert_stack.push(elem1);
                }
                
            }
        }
        while(!tert_stack.isEmpty()){
            elem2 = tert_stack.pop();
            prim_stack.push(elem2);
        }
        while(!prim_stack.isEmpty()){
            //transfers postfix notation data into tert_stack with correct alignment
            tert_stack.push(prim_stack.pop());
        }
    }
    void calculate(){
        //follows the algorithm of calculating the value for a postfix-notated expression.
        //tert_stack contains the postfix-notated data.
        Object x;
        do{
            x=tert_stack.pop();
            if(x instanceof Integer){
                //if the popped value is an integer, then simply push into prim_stack
                prim_stack.push(x);
            }
            else{
                //if the popped value is an operator, pop out the top two values from prim_stack and operate on them 
                //using the popped operator from tert_stack
                //and push the value back to prim_stack
                int a =(int)prim_stack.pop();
                int b =(int)prim_stack.pop();
                prim_stack.push(evaluateExpression(b,a,x));
            }
        }
        while(!tert_stack.isEmpty());
        //At the end, top of prim_stack contains the final evaluated answer.
    }
    int evaluateExpression(int a, int b, Object x){
        if(x=='+'){
            if(1>2/*the actual condition of overflow goes here;1<2 is just a dummy*/){
                overflowError();
                return 231997;
            }
            else{
                return a+b;
            }
            
        }
        else if(x=='-'){
            if(1>2/*the actual condition of overflow goes here;1<2 is just a dummy*/){
                overflowError();
                return 231997;
            }
            else{
                return a-b;
            }
        }
        else if(x=='*'/*the actual condition of overflow goes here;1<2 is just a dummy*/){
            if(1>2){
                overflowError();
                return 231997;
            }
            else{
                return a*b;
            }
        }
        else if(x=='/'){
            int c=a%b;
            a=a-c;
            return a/b;
        }
        else{
            return -231997;
        }
    }
    void nullRecallError(){
        System.out.println("ERROR:Null value recalled!");
    }
    void overflowError(){
        
    }
    void pressBlue(Object a){
        if(a=="assign"){
            //if "assigned" is pressed,
            //1. evaluate the expression
            //2. enter the value into correct position in the variable array.
            //3. refresh the stacks
            this.evaluate();
            array.enterValue((int)prim_stack.top(), array.current);
            while(!tert_stack.isEmpty()){
                tert_stack.pop();
            }
            while(!sec_stack.isEmpty()){
                sec_stack.pop();
            }
            while(!prim_stack.isEmpty()){
                prim_stack.pop();
            }
            this.showVariableChart();
            exp="";
            exp2="";
        }
        else if(a=="recall"){
            //if "recall" is pressed and
            //if the black pointer is pointing to null value, raise error,
            //else fetch the value into expression
            if(array.array[array.current] == null){
                nullRecallError();
                System.exit(0);
            }
            prim_stack.push(array.array[array.current]);
        }
        else{
            //if any digit or operator is pressed, put it into prim_stack
            prim_stack.push(a);
            //exp is for printing the expression.
            exp2=a+"";
            exp=exp.concat(a+"");
        }
    }
    void pressBlack(char c){
        if(c=='l' && array.current!=0){
            array.current--;
        }
        if(c=='r' && array.current!=9){
            array.current++;
        }
        segmentDisplay(array.current);
    }
    void segmentDisplay(int i){
        //for 8-segment display.
    }
    void showVariableChart(){
        for(int i=0;i<10;i++){
            if(array.array[i]==null){
                System.out.println("v"+i+" : ");
            }
            else{
                System.out.println("v"+i+" : "+array.array[i]);
            }
        }
        System.out.println("");
        System.out.println("Black pointer points at "+array.current);
        System.out.println("Entered expression is: "+exp);
    }
    public static void main(String args[]){
        Press p = new Press();
        p.pressBlack('r');
        p.pressBlue(7);
        p.pressBlue(2);
        p.pressBlue('/');
        p.pressBlue(9);
        p.pressBlue('*');
        p.pressBlue(3);
        p.pressBlue("assign");
        
    }
}
