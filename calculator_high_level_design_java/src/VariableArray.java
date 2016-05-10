/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cs1140158
 */
public class VariableArray {
    Object[] array = new Object[10];
    int current;
    VariableArray(){
        for(int i =0;i<10;i++){
            array[i]=null;
        }
        current = 0;
    }
    void enterValue(int a,int b){
        array[b]=a;
    }
}
