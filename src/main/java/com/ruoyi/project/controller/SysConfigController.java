package com.ruoyi.project.controller;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.domain.SysConfig;
import com.ruoyi.project.service.ISysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 系统配置信息
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/system/config")
public class SysConfigController extends BaseController
{
    private String prefix = "system/config";

    @Autowired
    private ISysConfigService configService;

    /**
     * 设置系统配置
     */
    @GetMapping()
    public String config(ModelMap mmap)
    {
        SysConfig config = configService.selectSysConfig();
        mmap.put("config", config);
        return prefix + "/config";
    }

    /**
     * 设置系统配置（保存）
     */
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult save(SysConfig config)
    {
        return toAjax(configService.updateSysConfig(config));
    }
}
