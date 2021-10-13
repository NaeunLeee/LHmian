package com.lh.app.payment.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lh.app.payment.domain.PaymentVO;

public class RefundTicket {
	public int refundTicket(PaymentVO vo) {
		HttpURLConnection conn = null;
		ShowToken showToken = new ShowToken();
		String token = showToken.showToken();
		int result = 0;
		try {
			// ajax의 url부분
			//서버보안때문에 환불은 ajax로 데이터를 보내도 실행이  안됨
			//이 방법 뿐??
			URL url = new URL("https://api.iamport.kr/payments/cancel");
			conn = (HttpURLConnection) url.openConnection();

			// ajax의 method, contentType, authorization부분
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Authorization", token);
			conn.setDoOutput(true);

			JsonObject obj = new JsonObject();

			double amount = vo.getPrice();
			String merchant_uid = vo.getPayNo();

			//환불에 필요한 데이터를 담아줌
			obj.add("merchant_uid", new Gson().toJsonTree(merchant_uid));
			obj.add("amount", new Gson().toJsonTree(amount));
			obj.add("access_token", new Gson().toJsonTree(token));

			BufferedWriter bw;
			bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(obj.toString());
			bw.flush();
			bw.close();

			int responseCode = conn.getResponseCode();
			System.out.println("응답코드 : " + responseCode);

			if (responseCode == 200) { // 정상 호출
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				StringBuilder sb = new StringBuilder();
				String line = null;
				while ((line = br.readLine()) != null) {
					sb.append(line + "\n");
				}
				br.close();
				System.out.println("환불 요청 : " + "" + sb.toString());
				result = 1;
			} else { // 에러 발생
				System.out.println(conn.getResponseMessage());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
}
