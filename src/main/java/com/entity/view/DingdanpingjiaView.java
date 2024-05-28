package com.entity.view;

import com.entity.DingdanpingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 订单评价
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
@TableName("dingdanpingjia")
public class DingdanpingjiaView  extends DingdanpingjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DingdanpingjiaView(){
	}
 
 	public DingdanpingjiaView(DingdanpingjiaEntity dingdanpingjiaEntity){
 	try {
			BeanUtils.copyProperties(this, dingdanpingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
