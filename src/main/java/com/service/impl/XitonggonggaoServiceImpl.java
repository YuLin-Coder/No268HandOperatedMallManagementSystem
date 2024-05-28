package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XitonggonggaoDao;
import com.entity.XitonggonggaoEntity;
import com.service.XitonggonggaoService;
import com.entity.vo.XitonggonggaoVO;
import com.entity.view.XitonggonggaoView;

@Service("xitonggonggaoService")
public class XitonggonggaoServiceImpl extends ServiceImpl<XitonggonggaoDao, XitonggonggaoEntity> implements XitonggonggaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XitonggonggaoEntity> page = this.selectPage(
                new Query<XitonggonggaoEntity>(params).getPage(),
                new EntityWrapper<XitonggonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XitonggonggaoEntity> wrapper) {
		  Page<XitonggonggaoView> page =new Query<XitonggonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XitonggonggaoVO> selectListVO(Wrapper<XitonggonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XitonggonggaoVO selectVO(Wrapper<XitonggonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XitonggonggaoView> selectListView(Wrapper<XitonggonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XitonggonggaoView selectView(Wrapper<XitonggonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
