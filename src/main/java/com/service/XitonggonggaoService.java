package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XitonggonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XitonggonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XitonggonggaoView;


/**
 * 系统公告
 *
 * @author 
 * @email 
 * @date 2021-03-07 14:37:21
 */
public interface XitonggonggaoService extends IService<XitonggonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XitonggonggaoVO> selectListVO(Wrapper<XitonggonggaoEntity> wrapper);
   	
   	XitonggonggaoVO selectVO(@Param("ew") Wrapper<XitonggonggaoEntity> wrapper);
   	
   	List<XitonggonggaoView> selectListView(Wrapper<XitonggonggaoEntity> wrapper);
   	
   	XitonggonggaoView selectView(@Param("ew") Wrapper<XitonggonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XitonggonggaoEntity> wrapper);
   	
}

