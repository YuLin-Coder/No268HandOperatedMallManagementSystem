package com.entity.view;

import com.entity.ShangpinxilieEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品系列
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-07 14:37:21
 */
@TableName("shangpinxilie")
public class ShangpinxilieView  extends ShangpinxilieEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinxilieView(){
	}
 
 	public ShangpinxilieView(ShangpinxilieEntity shangpinxilieEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinxilieEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
