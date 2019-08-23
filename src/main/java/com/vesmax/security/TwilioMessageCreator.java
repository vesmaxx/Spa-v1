package com.vesmax.security;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Service;

import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

@Service
public class TwilioMessageCreator {
	public static final String ACCOUNT_SID = "AC0eeff0589215f46f2f6e33a8a7349083";
	public static final String AUTH_TOKEN = "c668d720165f1bd85a8079284fa0a4b9";
	public static final String TWILIO_NUMBER = "+12563644384";

	public void sendSMS(String msg, String phone) throws TwilioRestException {

		TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

		// Build a filter for the MessageList
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		params.add(new BasicNameValuePair("Body", msg));
		params.add(new BasicNameValuePair("To", phone));
		params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

		MessageFactory messageFactory = client.getAccount().getMessageFactory();
		Message message = messageFactory.create(params);
		System.out.println(message.getSid());
	}

}
