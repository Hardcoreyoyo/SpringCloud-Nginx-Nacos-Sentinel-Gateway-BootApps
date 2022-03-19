package ServiceSMS.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
@RequestMapping("/sms")
public class SmsController {

    @GetMapping("")
    public String MasterPath() throws UnknownHostException {
        String ip = InetAddress.getLocalHost().getHostAddress();
        return ip + "Service SMS MasterPath";
    }

    @PostMapping("/send")
    public String EmailSend() throws UnknownHostException {
        String ip = InetAddress.getLocalHost().getHostAddress();
        return  ip + "I'm ServiceSMS Send Email";
    }

}
