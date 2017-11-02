package com.kosta.taeng.controller.util;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Frame;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MsgAdminServer extends Frame implements ActionListener, Runnable {
	// 이벤트를 처리하기 위한 액션뭐시기, 보내기 받기를 동시에 하기 위한 러너블
	private static final long serialVersionUID = 1L;

	// private Vector<Socket> client=new Vector<Socket>();
	private ArrayList<Socket> client = new ArrayList<Socket>();

	private TextArea ta = new TextArea();
	private TextField tf = new TextField();

	private int port = 8087; // 포트번호 -> 해당프로세스를 찾아가는 길

	private ServerSocket ss;
	private Socket sc;

	private String str;

	BufferedReader br;
	PrintWriter pw;

	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rset = null;
	

	public static void main(String[] args) {
		try {
		
			new MsgAdminServer().serverStart();
		
		
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e3) {
					e3.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e4) {
					e4.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e5) {
					e5.printStackTrace();
				}
			}
		}
	}

	public MsgAdminServer() {
		add(ta, BorderLayout.CENTER);
		add(tf, BorderLayout.SOUTH);
		tf.addActionListener(this);

		addWindowListener(new WindowAdapter() {

			@Override
			public void windowClosing(WindowEvent arg0) {
				System.exit(0);
			}

		});
		setTitle("관리자 메세지 프로그램");
		setSize(330, 300);
		setVisible(true);
	}

	// 네트워크 핵심 메소드
	public void serverStart() {
		try {
			// 서버소켓을 생성한다. 1.
			ss = new ServerSocket(port);
			ta.setText("메세지 프로그램을 실행했습니다. \n");
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "taeng", "9999");
			stmt = conn.createStatement();
			rset = stmt.executeQuery("select pc_num,member_id from pc");

			while (true) {
				// 클라이언트가 접속해서 들어오기를 기다린다.
				// 클라이언트가 접속할때까지 접속이 멈춰있다가 클라이언트 접속시 깨어난다.
				sc = ss.accept();
				ManageClient mc = new ManageClient(sc);
				client.add(mc.sc);
				mc.start();
//				mc.join();
			}
		} catch (Exception e) {
			ta.append("메세지 프로그램을 실행시키지 못 했습니다.");
		}
	}

	@Override
	public void run() {
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// 여기는 아래 필드에서 문자를 입력하면 위에 필드에 보이게끔 해줌
		Component comp = (Component) e.getSource();

		if (comp instanceof TextField) {
			String s = tf.getText().trim();

			if (s.length() == 0)
				return;

			try {
				// 클라이언트와 접속이 안되면
				if (sc == null)
					return;

				// 서버가 채팅을 클라이언트에게 보낸다
				pw = new PrintWriter(sc.getOutputStream(), true);
				pw.println(" Admin : " + s);

				ta.append(" Admin : " + s + "\n");
				tf.setText("");
				tf.requestFocus();

			} catch (Exception e2) {
				ta.append("메세지가 보내지지 않습니다. 오류 발생. ");
			}
		}

	}

	class ManageClient extends Thread implements Runnable {

		Socket sc;
		BufferedReader br;
		PrintWriter pw;
		int pcNum;
		String memberId;

		public ManageClient(Socket sc) {
			this.sc = sc;
		}

		@Override
		public void run() {

			// 여긴 Client가 보낸 문자를 읽는 부분
			try {
				

				// 접속한 클라이언트가 없으면
				if (sc == null)
					return;

				while (rset.next()) {
					pcNum = rset.getInt(1);
					memberId = rset.getString(2);
				}
				
				// 접속한 클라이언트의 IP주소 얻기
				ta.append(pcNum + " 번 회원이 메세지를 입력 중입니다. \n");

				// 클라이언트가 보낸정보를 읽어 들이는 입력 스트림
				br = new BufferedReader(new InputStreamReader(sc.getInputStream()));

				// 클라이언트의 정보를 읽어 들인다.
				while ((str = br.readLine()) != null) {
					ta.append(str + "\n");
				}
			} catch (Exception e) {
				// 클라이언트가 접속을 해제 한 경우
				ta.append(pcNum + " 번 회원이 메세지를 닫았습니다.\n");

			}
		}
	}

}