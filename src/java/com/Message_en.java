package com;


import java.util.ListResourceBundle;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author abhi
 */
public class Message_en extends ListResourceBundle{

    
    @Override
    protected Object[][] getContents() {
        
        return contents;
    }

    private static final String[][] contents = {
        {"name", "WCD II"},
        {"full_name", "Web Component Development II"},
        {"short_name", "Web Component කරන්න "}
    };
    
    
}
