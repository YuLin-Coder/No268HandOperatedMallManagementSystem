package com.dao;

import com.entity.DiscussshangpinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshangpinxinxiVO;
import com.entity.view.DiscussshangpinxinxiView;


/**
 * 商品信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
public interface DiscussshangpinxinxiDao extends BaseMapper<DiscussshangpinxinxiEntity> {
	
	List<DiscussshangpinxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
	
	DiscussshangpinxinxiVO selectVO(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
	
	List<DiscussshangpinxinxiView> selectListView(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);

	List<DiscussshangpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
	
	DiscussshangpinxinxiView selectView(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
	
}
