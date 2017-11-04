package com.kosta.taeng.controller.util;

import java.awt.BorderLayout;
import java.awt.Choice;
import java.awt.Color;
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
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;

public class MsgAdminServer extends Frame implements ActionListener, Runnable {
	// 이벤트를 처리하기 위한 액션리스너, 보내기 받기를 동시에 하기 위한 러너블
	private static final long serialVersionUID = 1L;

	private HashMap<Integer, OutputStream> Chat = new HashMap<Integer, OutputStream>();
	private TextArea ta = new TextArea();
	private TextField tf = new TextField();
//	private TextField tf2 = new TextField();
	private Choice ch = new Choice();
	
	private int port = 8086; // 포트번호 -> 해당프로세스를 찾아가는 길

	private ServerSocket ss;
	private Socket sc;
	private String temp;
	
	BufferedReader br;
	BufferedReader br2;
	

	private String str,str2;
	public static void main(String[] args) {
		new MsgAdminServer().serverStart();
	}
	
	public MsgAdminServer() {
		
		
//		add(ch,BorderLayout.NORTH);
//		ch.add("1");ch.add("2");ch.add("3");ch.add("4");ch.add("5");
//		ch.add("6");ch.add("7");ch.add("8");ch.add("9");ch.add("10");
//		ch.add("11");ch.add("12");ch.add("13");ch.add("14");ch.add("15");
//		ch.add("16");ch.add("17");ch.add("18");ch.add("19");ch.add("20");
//		ch.add("21");ch.add("22");ch.add("23");ch.add("24");ch.add("25");
//		ch.add("26");ch.add("27");ch.add("28");ch.add("29");ch.add("30");
//		ch.add("31");ch.add("32");ch.add("33");ch.add("34");ch.add("35");
//		ch.add("36");ch.add("37");ch.add("38");ch.add("39");ch.add("40");
//		ch.add("41");ch.add("42");ch.add("43");ch.add("44");ch.add("45");
//		ch.add("46");ch.add("47");ch.add("48");ch.add("49");ch.add("50");
		add(ta, BorderLayout.CENTER);
		add(tf, BorderLayout.SOUTH);
		ta.setBackground(new Color(44, 89, 163));
		
		tf.addActionListener(this);

		addWindowListener(new WindowAdapter() {

			@Override
			public void windowClosing(WindowEvent arg0) {
				System.exit(0);
			}

		});
		setLocation(350, 250);
		setTitle("관리자 메세지 프로그램");
		setSize(400, 400);
		ta.setForeground(new Color(218,255,173));
		tf.setForeground(new Color(201,165,75));
		setVisible(true);
	}

	// 네트워크 핵심 메소드
	public void serverStart() {
		try {
			// 서버소켓을 생성한다. 1.
			ss = new ServerSocket(port);
			ta.setText(" ☆ 메세지 프로그램을 실행했습니다. \n          ★ 주의 사항 ★ \n  마지막에 보낸 회원에게만 답장 가능합니다.\n");
			
			while (true) {
				sc = ss.accept();
				ManageClient mc = new ManageClient(sc);
				mc.start();
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
				if (sc == null)
					return;
				
				// 서버가 채팅을 클라이언트에게 보낸다
				PrintWriter pw = new PrintWriter(sc.getOutputStream(), true);
				pw.println(" Admin : " + s);

				ta.append("Admin : " + s + "\n");
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

				br = new BufferedReader(new InputStreamReader(sc.getInputStream()));
				br2 = new BufferedReader(new InputStreamReader(sc.getInputStream()));
				// 클라이언트가 보낸정보를 읽어 들이는 입력 스트림

				// 클라이언트의 정보를 읽어 들인다.
				while (((str = br.readLine()) != null) && ((str2=br.readLine())!=null)) {
					ta.append(str+"번 Client : "+str2 + "\n");
				}
			} catch (Exception e) {
				// 클라이언트가 접속을 해제 한 경우
//				ta.append("회원이 메세지를 닫았습니다.\n");
				

			}
		}
	}

}