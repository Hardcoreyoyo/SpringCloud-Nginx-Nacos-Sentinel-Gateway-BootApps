package ServiceRBAC.feign;

import com.alibaba.csp.sentinel.annotation.SentinelResource;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(name = "Service-SMS", fallback = FeignServiceSmsError.class)
public interface FeignServiceSMS {

    @PostMapping("/sms/send")
    String CallSMS();

}
