/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cs1140158
 */
public class NodeStack{
    Node top=new Node();
    int size;
    NodeStack(){
        top=null;
        size=0;
    }
    int getSize(){
        return size;
    }
    boolean isEmpty(){
        if(top==null){
            return true;
        }
        else
            return false;
    }
    Object top(){
        return top.getElement();
    }
    void push(Object o){
        Node n=new Node(o,top);
        top=n;
        size++;
    }
    Object pop(){
        Object o=top.getElement();
        top=top.getNext();
        size--;
        return o;
    }
}
