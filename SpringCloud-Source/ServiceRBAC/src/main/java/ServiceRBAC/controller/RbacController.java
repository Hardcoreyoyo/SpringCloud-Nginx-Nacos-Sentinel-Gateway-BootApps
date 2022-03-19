package ServiceRBAC.controller;

import ServiceRBAC.BlockHander.SentinelBlockHandler;
import ServiceRBAC.service.SendEmailService;
import com.alibaba.csp.sentinel.annotation.SentinelResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rbac")
public class RbacController {

    @Autowired
    private SendEmailService sendEmailService;

    @GetMapping("")
    public String MasterPath(){
        return "Service RBAC MasterPath";
    }

    @GetMapping("/sms")
    @SentinelResource(value = "rbacSMS",
            blockHandlerClass = {SentinelBlockHandler.class},
            blockHandler = "SentinelError")
    public String CallSMS(){
        return sendEmailService.Send();
    }

    //TODO: 仍然需要幾乎針對每一個函數進行限流方法的開發，
    // 因為每個方法的參數是不同的。
    // 所以這些方法都只適用於個性化配置，不是全局配置。
    // 那麼sentinel針對服務限流，有沒有全局的默認的BlockHandler呢？
    // 答案是沒有（2020/05）。
    // 實踐來看這真的不影響什麼，
    // 把最原始的限流響應結果交給前端做一個統一的處理，
    // 給出友好的提示信息比如：“系統服務繁忙請稍後再試！”。
    // 是非常好的做法：統一、簡單、易維護！

}
