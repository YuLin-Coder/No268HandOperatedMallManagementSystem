package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinxilieEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinxilieVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinxilieView;


/**
 * 商品系列
 *
 * @author 
 * @email 
 * @date 2021-03-07 14:37:21
 */
public interface ShangpinxilieService extends IService<ShangpinxilieEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinxilieVO> selectListVO(Wrapper<ShangpinxilieEntity> wrapper);
   	
   	ShangpinxilieVO selectVO(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
   	
   	List<ShangpinxilieView> selectListView(Wrapper<ShangpinxilieEntity> wrapper);
   	
   	ShangpinxilieView selectView(@Param("ew") Wrapper<ShangpinxilieEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinxilieEntity> wrapper);
   	
}

