package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 *
 * @author ruoyi
 */
@org.springframework.boot.autoconfigure.SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class RuoYiApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("若依代码生成器启动成功: http://localhost:5064/ ");
    }
}
