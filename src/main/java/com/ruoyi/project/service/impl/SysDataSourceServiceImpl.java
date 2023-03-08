package com.ruoyi.project.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.domain.SysDataSource;
import com.ruoyi.project.mapper.SysDataSourceMapper;
import com.ruoyi.project.service.ISysDataSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 系统数据源 业务层处理
 *
 * @author ruoyi
 */
@Service
public class SysDataSourceServiceImpl implements ISysDataSourceService
{
    @Autowired
    private SysDataSourceMapper mapper;

    /**
     * 根据条件分页查询数据源数据
     *
     * @param dataSource 数据源数据信息
     * @return 数据源数据集合信息
     */
    @Override
    public List<SysDataSource> selectSysDataSourceList(SysDataSource dataSource)
    {
        return mapper.selectSysDataSourceList(dataSource);
    }

    /**
     * 查询系统数据源信息
     *
     * @param id 数据源主键
     * @return 数据源配置
     */
    @Override
    public SysDataSource selectSysDataSource(Long id)
    {
        return mapper.selectSysDataSource(id);
    }

    /**
     * 新增数据源配置信息
     *
     * @param dataSource 数据源配置信息
     * @return 结果
     */
    @Override
    public int insertSysDataSource(SysDataSource dataSource)
    {
        return mapper.insertSysDataSource(dataSource);
    }

    /**
     * 更新系统数据源信息
     *
     * @param dataSource 系统数据源信息
     * @return 结果
     */
    @Override
    public int updateSysDataSource(SysDataSource dataSource)
    {
        return mapper.updateSysDataSource(dataSource);
    }

    /**
     * 批量删除数据源数据
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    @Override
    public int deleteSysDataSourceByIds(String ids)
    {
        return mapper.deleteSysDataSourceByIds(Convert.toStrArray(ids));
    }

    /**
     * 数据源状态修改
     *
     * @param dataSource 数据源信息
     * @return 结果
     */
    @Override
    public int changeStatus(SysDataSource dataSource)
    {
        return mapper.updateSysDataSource(dataSource);
    }
}
