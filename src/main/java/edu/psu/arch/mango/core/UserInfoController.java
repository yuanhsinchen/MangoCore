package edu.psu.arch.mango.core;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserInfoController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/userinfo")
    public UserInfo userinfo(@RequestParam(value="name", required=false, defaultValue="World") String name) {
        return new UserInfo(counter.incrementAndGet(),
                            String.format(template, name));
    }
}
