package com.ruoyi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

/**
 * 项目启动后执行
 *
 * @author liaocj
 * @date 2023/03/08
 */
@Component
public class CommandRunner implements CommandLineRunner
{
    private static Logger logger = LoggerFactory.getLogger(CommandRunner.class);

    @Autowired
    Environment environment;

    @Override
    public void run(String... args) throws Exception
    {
        String port = environment.getProperty("local.server.port");
        String url = "http://localhost:" + port;
        try
        {
            openBrowserUrl(url);
        } catch (Exception e)
        {
            logger.error("打开默认浏览器异常：" + e);
        }
        logger.info(url);
    }

    /**
     * 打开浏览器
     *
     * @param url
     */
    private void openBrowserUrl(String url) throws Exception
    {
        // 获取操作系统的名字
        String osName = System.getProperty("os.name", "");
        if (osName.startsWith("Mac OS"))
        {
            // MacOS 的打开方式
            new ProcessBuilder("/usr/bin/open", "-a", "/Applications/Google Chrome.app", url).start();
        }
        else if (osName.startsWith("Windows"))
        {
            // Windows 的打开方式。
            new ProcessBuilder("rundll32 url.dll,FileProtocolHandler", url).start();
        }
        else
        {
            // Unix or Linux 的打开方式
            String[] browsers = {"chrome", "firefox", "opera", "konqueror", "epiphany", "mozilla", "netscape"};
            String browser = null;
            for (int count = 0; count < browsers.length && browser == null; count++)
            // 执行代码，在brower有值后跳出，
            // 这里是如果进程创建成功了，==0是表示正常结束。
            {
                if (Runtime.getRuntime().exec(new String[]{"which", browsers[count]}).waitFor() == 0)
                {
                    browser = browsers[count];
                }
            }
            if (browser == null)
            {
                throw new Exception("Could not find web browser");
            }
            else
            {
                // 这个值在上面已经成功的得到了一个进程。
                Runtime.getRuntime().exec(new String[]{browser, url});
            }
        }
    }

}
