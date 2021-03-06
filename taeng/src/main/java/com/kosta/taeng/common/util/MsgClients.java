package com.kosta.taeng.common.util;

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
import java.net.Socket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MsgClients extends Frame implements ActionListener, Runnable {
	private static final long serialVersionUID = 1L;

	private TextArea ta = new TextArea();
	private TextField tf = new TextField();
	private TextField tf2 = new TextField();

	private int port = 8086;
	private String addr = "127.0.0.1"; // 서버의 아이피주소

	private Socket sc;

	public MsgClients() {
		add(tf2, BorderLayout.NORTH);
		add(ta, BorderLayout.CENTER);
		add(tf, BorderLayout.SOUTH);

		tf.addActionListener(this);

		addWindowListener(new WindowAdapter() {

			@Override
			public void windowClosing(WindowEvent arg0) {
				System.exit(0);
			}

		});

		setSize(300, 300);
		setTitle("회원 메세지 프로그램");
		setVisible(true);
	}

	public static void main(String[] args) {
		new MsgClients().connect();
	}

	// 클라이언트 핵심 메소드
	public void connect() {
		// 서버에 접속한다.
		try {
			sc = new Socket(addr, port); // 아이피와 포트를 적어준다
			ta.setText("♥메세지를 입력해주세요.♥\n ★ 메세지 앞에 자리 번호를 써주세요★\n ★자리 번호 구라치면 손모가지 날아갑니다.\n ");

			Thread th = new Thread(this);
			th.start();

		} catch (Exception e) {
			sc = null;
			ta.setText(" 메세지 프로그램 실행 오류\n");
		}
	}

	@Override
	public void run() {
		String str;
		try {
			if (sc == null)
				return;
			BufferedReader br = new BufferedReader(new InputStreamReader(sc.getInputStream()));

			while ((str = br.readLine()) != null) {
				ta.append(str + "\n");

			}
		}

		catch (Exception e) {
			ta.append("관리자가 프로그램을 껐습니다.\n");
			sc = null;
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Component comp = (Component) e.getSource();

		if (comp instanceof TextField) {
			String s = tf.getText().trim();
			String s2 = tf2.getText().trim();

			if (s.length() == 0)
				return;

			try {
				// 서버에 연결되지 않은 경우
				if (sc == null)
					return;

				// 서버에 데이터 전송하기
				PrintWriter pw = new PrintWriter(sc.getOutputStream(), true);
				PrintWriter pw2 = new PrintWriter(sc.getOutputStream(), true);

				try {
					if (pw2 != null) {
						pw2.println(s2);
						pw.println(s);
						ta.append(s2 + "번 Client : " + s + "\n");
						tf.setText("");
						tf.requestFocus();
					}
				} catch (Exception e3) {
					ta.append("자리 번호를 입력하세요");
				}

			} catch (Exception e2) {
				ta.append("서버가 접속을 해제함");
			}
		}
	}
}