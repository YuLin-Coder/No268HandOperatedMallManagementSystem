package com.dao;

import com.entity.DingdanpingjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DingdanpingjiaVO;
import com.entity.view.DingdanpingjiaView;


/**
 * 订单评价
 * 
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
public interface DingdanpingjiaDao extends BaseMapper<DingdanpingjiaEntity> {
	
	List<DingdanpingjiaVO> selectListVO(@Param("ew") Wrapper<DingdanpingjiaEntity> wrapper);
	
	DingdanpingjiaVO selectVO(@Param("ew") Wrapper<DingdanpingjiaEntity> wrapper);
	
	List<DingdanpingjiaView> selectListView(@Param("ew") Wrapper<DingdanpingjiaEntity> wrapper);

	List<DingdanpingjiaView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanpingjiaEntity> wrapper);
	
	DingdanpingjiaView selectView(@Param("ew") Wrapper<DingdanpingjiaEntity> wrapper);
	
}
