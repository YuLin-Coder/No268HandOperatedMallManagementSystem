package com.dao;

import com.entity.ShangpinxilieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinxilieVO;
import com.entity.view.ShangpinxilieView;


/**
 * 商品系列
 * 
 * @author 
 * @email 
 * @date 2021-03-07 14:37:21
 */
public interface ShangpinxilieDao extends BaseMapper<ShangpinxilieEntity> {
	
	List<ShangpinxilieVO> selectListVO(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
	
	ShangpinxilieVO selectVO(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
	
	List<ShangpinxilieView> selectListView(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);

	List<ShangpinxilieView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
	
	ShangpinxilieView selectView(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
	
}
