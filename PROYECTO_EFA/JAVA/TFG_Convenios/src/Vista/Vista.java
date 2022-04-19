package Vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.border.LineBorder;
import javax.swing.BoxLayout;
import javax.swing.JTextField;
import java.awt.Font;

public class Vista extends JFrame {

	private JPanel contentPane;
	private JTextField txtNIF;
	private JTextField txtNombreCompleto;
	private JTextField txtTelefono;
	private JTextField txtCorreo;
	private JTextField txtFechaNacimiento;
	private JTextField textField_5;
	private JTextField textField_6;
	private JTextField textField_7;
	private JTextField textField_8;
	private JTextField textField_9;
	private JTextField txtTituloNuevoAlumno;
	private JTextField txtNombreCursoAlumno;
	private JTextField txtCodigoPostalAlumno;
	private JTextField textField;
	private JTextField textField_1;

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
		contentPane.setBackground(Color.WHITE);
		contentPane.setForeground(new Color(102, 255, 204));
		contentPane.setBorder(new LineBorder(new Color(0, 0, 0), 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		txtNIF = new JTextField();
		txtNIF.setText("NIF");
		txtNIF.setBounds(71, 86, 121, 51);
		contentPane.add(txtNIF);
		txtNIF.setColumns(10);
		
		txtNombreCompleto = new JTextField();
		txtNombreCompleto.setText("NOMBRE COMPLETO");
		txtNombreCompleto.setColumns(10);
		txtNombreCompleto.setBounds(71, 155, 121, 51);
		contentPane.add(txtNombreCompleto);
		
		txtTelefono = new JTextField();
		txtTelefono.setText("TELEFONO");
		txtTelefono.setColumns(10);
		txtTelefono.setBounds(71, 233, 121, 51);
		contentPane.add(txtTelefono);
		
		txtCorreo = new JTextField();
		txtCorreo.setText("CORREO");
		txtCorreo.setColumns(10);
		txtCorreo.setBounds(71, 310, 121, 51);
		contentPane.add(txtCorreo);
		
		txtFechaNacimiento = new JTextField();
		txtFechaNacimiento.setText("FECHA NACIMIENTO");
		txtFechaNacimiento.setColumns(10);
		txtFechaNacimiento.setBounds(71, 386, 121, 51);
		contentPane.add(txtFechaNacimiento);
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		textField_5.setBounds(243, 86, 121, 51);
		contentPane.add(textField_5);
		
		textField_6 = new JTextField();
		textField_6.setColumns(10);
		textField_6.setBounds(243, 155, 121, 51);
		contentPane.add(textField_6);
		
		textField_7 = new JTextField();
		textField_7.setColumns(10);
		textField_7.setBounds(243, 233, 121, 51);
		contentPane.add(textField_7);
		
		textField_8 = new JTextField();
		textField_8.setColumns(10);
		textField_8.setBounds(243, 310, 121, 51);
		contentPane.add(textField_8);
		
		textField_9 = new JTextField();
		textField_9.setColumns(10);
		textField_9.setBounds(243, 386, 121, 51);
		contentPane.add(textField_9);
		
		txtTituloNuevoAlumno = new JTextField();
		txtTituloNuevoAlumno.setFont(new Font("Tahoma", Font.BOLD, 24));
		txtTituloNuevoAlumno.setText("NUEVO ALUMNO");
		txtTituloNuevoAlumno.setColumns(10);
		txtTituloNuevoAlumno.setBounds(285, 10, 258, 51);
		contentPane.add(txtTituloNuevoAlumno);
		
		txtNombreCursoAlumno = new JTextField();
		txtNombreCursoAlumno.setText("NOMBRE CURSO");
		txtNombreCursoAlumno.setColumns(10);
		txtNombreCursoAlumno.setBounds(71, 460, 121, 51);
		contentPane.add(txtNombreCursoAlumno);
		
		txtCodigoPostalAlumno = new JTextField();
		txtCodigoPostalAlumno.setText("CODIGO POSTAL");
		txtCodigoPostalAlumno.setColumns(10);
		txtCodigoPostalAlumno.setBounds(71, 537, 121, 51);
		contentPane.add(txtCodigoPostalAlumno);
		
		textField = new JTextField();
		textField.setColumns(10);
		textField.setBounds(243, 460, 121, 51);
		contentPane.add(textField);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(243, 537, 121, 51);
		contentPane.add(textField_1);
	}
}