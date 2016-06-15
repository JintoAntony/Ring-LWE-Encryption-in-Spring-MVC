/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aep.implementation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.spec.IvParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 *
 * @author prime
 */
@Controller

public class ImplementationController {

    // ++++++++++++++++ Change this to another packge later +++++++++++++++
    // ++++++++++++++++  functionality starts here +++++++++++++++++++++++++
    @RequestMapping(value = "/dataflow**", method = RequestMethod.GET)
    public ModelAndView dataflowPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "The Dataflow of this project");
        model.addObject("message", "Some images goes here");
        model.setViewName("dataflow");
        return model;
    }

    @RequestMapping(value = "/inputs**", method = RequestMethod.GET)
    public ModelAndView inputsPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Please enter the inputs for the algorithm");
        model.addObject("message", "All parameters if possible for best output");
        model.setViewName("inputs");
        return model;
    }

    @RequestMapping(value = "/outputs**", method = RequestMethod.GET)
    public ModelAndView outputsPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Please enter the inputs for the algorithm");
        model.addObject("message", "All parameters if possible for best output");
        model.setViewName("outputs");
        return model;
    }

    @RequestMapping(value = "/results**", method = RequestMethod.GET)
    public ModelAndView resultsPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Results found wil be displayed here (from the database previous resuts will be displayed");
        model.addObject("message", "Results goes ");
        model.setViewName("results");
        return model;
    }

    // ++++++++++++++++ End functionality here ++++++++++++++++++++++
    //Spring Security see this :
    @RequestMapping(value = "/inputs.do", method = RequestMethod.GET)
    public ModelAndView Inputs(
            @RequestParam(value = "plain_text", required = false) String plain_text,
            @RequestParam(value = "secret_key", required = false) String secret_key,
            @RequestParam(value = "iv", required = false) String IV) {

        ModelAndView model = new ModelAndView();
        String cipher_value = " ";
        String decrypted = " ";
        try {
            byte[] cipher = encrypt(plain_text, secret_key);
            for (int i = 0; i < cipher.length; i++) {
                System.out.print(new Integer(cipher[i]) + " ");
                System.out.println("");
                cipher_value = cipher_value + new Integer(cipher[i]) + " ";
            }
            decrypted = decrypt(cipher, secret_key);
             if (secret_key != null) {
            model.addObject("decrypted", decrypted);

        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        cipher_value = "fgfgf";
        if (plain_text != null) {
            model.addObject("plain_text", plain_text);
        }
        if (cipher_value != null) {
            model.addObject("cipher", secret_key);
        }

       
        model.setViewName("outputs");
        return model;
    }

    public static byte[] encrypt(String plainText, String encryptionKey) throws Exception {
        String IV = "AAAA";
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding", "SunJCE");
        SecretKeySpec key = new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES");
        cipher.init(Cipher.ENCRYPT_MODE, key, new IvParameterSpec(IV.getBytes("UTF-8")));
        return cipher.doFinal(plainText.getBytes("UTF-8"));
    }

    public static String decrypt(byte[] cipherText, String encryptionKey) throws Exception {
        String IV = "AAAA";
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding", "SunJCE");
        SecretKeySpec key = new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES");
        cipher.init(Cipher.DECRYPT_MODE, key, new IvParameterSpec(IV.getBytes("UTF-8")));
        return new String(cipher.doFinal(cipherText), "UTF-8");
    }

}
