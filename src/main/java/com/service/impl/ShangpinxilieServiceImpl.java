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


import com.dao.ShangpinxilieDao;
import com.entity.ShangpinxilieEntity;
import com.service.ShangpinxilieService;
import com.entity.vo.ShangpinxilieVO;
import com.entity.view.ShangpinxilieView;

@Service("shangpinxilieService")
public class ShangpinxilieServiceImpl extends ServiceImpl<ShangpinxilieDao, ShangpinxilieEntity> implements ShangpinxilieService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinxilieEntity> page = this.selectPage(
                new Query<ShangpinxilieEntity>(params).getPage(),
                new EntityWrapper<ShangpinxilieEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinxilieEntity> wrapper) {
		  Page<ShangpinxilieView> page =new Query<ShangpinxilieView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinxilieVO> selectListVO(Wrapper<ShangpinxilieEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinxilieVO selectVO(Wrapper<ShangpinxilieEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinxilieView> selectListView(Wrapper<ShangpinxilieEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinxilieView selectView(Wrapper<ShangpinxilieEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
