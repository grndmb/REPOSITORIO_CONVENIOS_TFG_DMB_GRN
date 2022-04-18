package Vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.border.LineBorder;
import javax.swing.BoxLayout;

public class Vista extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Vista frame = new Vista();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
//viosta ver
	/**
	 * Create the frame.
	 */
	public Vista() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 873, 647);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(51, 204, 153));
		contentPane.setForeground(new Color(102, 255, 204));
		contentPane.setBorder(new LineBorder(new Color(0, 0, 0), 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
	}

}