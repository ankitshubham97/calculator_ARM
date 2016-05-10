/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cs1140158
 */
public class Node {
    Object element;
    Node next;
    Node latest_node;
    Node(){
        element = null;
        next = null;
        latest_node = null;
    }
    Node(Object o,Node n){
        element = o;
        next = n;
    }
    void setElement(Object o){
        element = o;
    }
    void setNext(Node n){
        next = n;
    }
    Object getElement(){
        return element;
    }
    Node getNext(){
        return next;
    }
}
