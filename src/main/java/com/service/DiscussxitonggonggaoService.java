package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxitonggonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxitonggonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxitonggonggaoView;


/**
 * 系统公告评论表
 *
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
public interface DiscussxitonggonggaoService extends IService<DiscussxitonggonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxitonggonggaoVO> selectListVO(Wrapper<DiscussxitonggonggaoEntity> wrapper);
   	
   	DiscussxitonggonggaoVO selectVO(@Param("ew") Wrapper<DiscussxitonggonggaoEntity> wrapper);
   	
   	List<DiscussxitonggonggaoView> selectListView(Wrapper<DiscussxitonggonggaoEntity> wrapper);
   	
   	DiscussxitonggonggaoView selectView(@Param("ew") Wrapper<DiscussxitonggonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxitonggonggaoEntity> wrapper);
   	
}

