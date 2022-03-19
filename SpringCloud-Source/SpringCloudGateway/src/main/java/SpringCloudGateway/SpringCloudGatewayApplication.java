package SpringCloudGateway;

import SpringCloudGateway.exception.ToFrontSentinelBlockHandler;
import com.alibaba.csp.sentinel.adapter.spring.webflux.callback.WebFluxCallbackManager;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class SpringCloudGatewayApplication {

    public static void main(String[] args) {
        WebFluxCallbackManager.setBlockHandler(new ToFrontSentinelBlockHandler());
        SpringApplication.run(SpringCloudGatewayApplication.class, args);
    }

}