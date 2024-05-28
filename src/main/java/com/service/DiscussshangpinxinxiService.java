package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshangpinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshangpinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshangpinxinxiView;


/**
 * 商品信息评论表
 *
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
public interface DiscussshangpinxinxiService extends IService<DiscussshangpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshangpinxinxiVO> selectListVO(Wrapper<DiscussshangpinxinxiEntity> wrapper);
   	
   	DiscussshangpinxinxiVO selectVO(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
   	
   	List<DiscussshangpinxinxiView> selectListView(Wrapper<DiscussshangpinxinxiEntity> wrapper);
   	
   	DiscussshangpinxinxiView selectView(@Param("ew") Wrapper<DiscussshangpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshangpinxinxiEntity> wrapper);
   	
}

