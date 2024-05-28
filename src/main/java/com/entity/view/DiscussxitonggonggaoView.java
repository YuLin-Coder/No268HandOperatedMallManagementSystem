package com.entity.view;

import com.entity.DiscussxitonggonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 系统公告评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-07 14:37:22
 */
@TableName("discussxitonggonggao")
public class DiscussxitonggonggaoView  extends DiscussxitonggonggaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussxitonggonggaoView(){
	}
 
 	public DiscussxitonggonggaoView(DiscussxitonggonggaoEntity discussxitonggonggaoEntity){
 	try {
			BeanUtils.copyProperties(this, discussxitonggonggaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
