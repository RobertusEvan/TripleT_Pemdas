package com.mycompany.tictactoe;

import com.formdev.flatlaf.FlatDarkLaf;
import javax.swing.SwingUtilities;

public class Main {
    public static void main(String[] args) {
        
        try {
            FlatDarkLaf.setup();
        } catch (Exception e) {
            System.err.println("Gagal mengaktifkan FlatLaf Dark Theme");
            e.printStackTrace();
        }
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                LoginFrame loginFrame = new LoginFrame();
                loginFrame.setVisible(true);
            }
        });
    }
}
