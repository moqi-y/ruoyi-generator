package com.ruoyi.project.controller;

import com.ruoyi.framework.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 首页 业务处理
 *
 * @author ruoyi
 */
@Controller
public class IndexController extends BaseController
{

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap)
    {
        return "index";
    }
}
