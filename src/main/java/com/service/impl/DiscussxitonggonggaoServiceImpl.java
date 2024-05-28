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


import com.dao.DiscussxitonggonggaoDao;
import com.entity.DiscussxitonggonggaoEntity;
import com.service.DiscussxitonggonggaoService;
import com.entity.vo.DiscussxitonggonggaoVO;
import com.entity.view.DiscussxitonggonggaoView;

@Service("discussxitonggonggaoService")
public class DiscussxitonggonggaoServiceImpl extends ServiceImpl<DiscussxitonggonggaoDao, DiscussxitonggonggaoEntity> implements DiscussxitonggonggaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxitonggonggaoEntity> page = this.selectPage(
                new Query<DiscussxitonggonggaoEntity>(params).getPage(),
                new EntityWrapper<DiscussxitonggonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxitonggonggaoEntity> wrapper) {
		  Page<DiscussxitonggonggaoView> page =new Query<DiscussxitonggonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxitonggonggaoVO> selectListVO(Wrapper<DiscussxitonggonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxitonggonggaoVO selectVO(Wrapper<DiscussxitonggonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxitonggonggaoView> selectListView(Wrapper<DiscussxitonggonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxitonggonggaoView selectView(Wrapper<DiscussxitonggonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
