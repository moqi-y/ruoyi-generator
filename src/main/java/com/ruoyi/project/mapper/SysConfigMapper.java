package com.ruoyi.project.mapper;

import com.ruoyi.project.domain.SysConfig;
import org.apache.ibatis.annotations.Mapper;

/**
 * 字典表 数据层
 *
 * @author ruoyi
 */
@Mapper
public interface SysConfigMapper
{
    /**
     * 查询系统配置信息
     *
     * @return 系统配置
     */
    public SysConfig selectSysConfig();

    /**
     * 更新系统配置信息
     *
     * @param sysConfig 系统配置信息
     * @return 结果
     */
    public int updateSysConfig(SysConfig sysConfig);
}
