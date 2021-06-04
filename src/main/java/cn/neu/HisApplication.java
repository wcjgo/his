package cn.neu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class HisApplication {

    public static void main(String[] args) {
        SpringApplication.run(HisApplication.class, args);
    }
    @Bean
    public InternalResourceViewResolver set(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/static/public/");
        resolver.setSuffix(".html");
        return resolver;
    }

}
