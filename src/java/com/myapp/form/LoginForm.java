/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author liujintao
 */
public class LoginForm extends org.apache.struts.action.ActionForm {
    
    private String name;

    private String password;

    /**
     * @return
     */
    public String getName() {
        return name;
    }

    /**
     * @param string
     */
    public void setName(String string) {
        name = string;
    }

    /**
     * @return
     */
   /* public int getNumber() {
        return number;
    }

    /**
     * @param i
     */
  //  public void setNumber(int i) {
   //     number = i;
   // }

    /**
     *
     */
    //public LoginForm() {
        //super();//
        // TODO Auto-generated constructor stub
   // }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getName() == null || getName().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
}
