
import java.awt.Color;
import javax.swing.WindowConstants;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class FirstPanel extends javax.swing.JFrame {

    /**
     * Creates new form FirstPanel
     */
    public FirstPanel() {
        initComponents();
        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        officer = new javax.swing.JButton();
        adminstrator = new javax.swing.JButton();
        Policepic = new javax.swing.JLabel();
        Adminpic = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setBackground(new java.awt.Color(204, 204, 204));

        jPanel1.setBackground(new java.awt.Color(44, 62, 80));
        jPanel1.setLayout(null);

        officer.setBackground(new java.awt.Color(153, 255, 204));
        officer.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        officer.setText("Officer");
        officer.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        officer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                officerActionPerformed(evt);
            }
        });
        jPanel1.add(officer);
        officer.setBounds(330, 380, 200, 60);

        adminstrator.setBackground(new java.awt.Color(153, 255, 204));
        adminstrator.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        adminstrator.setText("Adminstrator");
        adminstrator.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        adminstrator.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                adminstratorActionPerformed(evt);
            }
        });
        jPanel1.add(adminstrator);
        adminstrator.setBounds(650, 380, 219, 60);

        Policepic.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Police.jpg"))); // NOI18N
        jPanel1.add(Policepic);
        Policepic.setBounds(330, 200, 190, 150);

        Adminpic.setIcon(new javax.swing.ImageIcon(getClass().getResource("/admin.png"))); // NOI18N
        jPanel1.add(Adminpic);
        Adminpic.setBounds(660, 200, 190, 160);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 1185, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 613, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void officerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_officerActionPerformed
        // TODO add your handling code here:
        
         login sf = new  login () ;
         sf.setVisible(true) ;
         this.dispose();
    }//GEN-LAST:event_officerActionPerformed

    private void adminstratorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_adminstratorActionPerformed
        // TODO add your handling code here:
        
        admin_login ad = new admin_login();
        ad.setVisible(true);
        this.dispose();
        
    }//GEN-LAST:event_adminstratorActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FirstPanel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FirstPanel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FirstPanel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FirstPanel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FirstPanel().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Adminpic;
    private javax.swing.JLabel Policepic;
    private javax.swing.JButton adminstrator;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JButton officer;
    // End of variables declaration//GEN-END:variables

    
}