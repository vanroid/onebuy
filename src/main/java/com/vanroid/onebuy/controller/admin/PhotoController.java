package com.vanroid.onebuy.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qcloud.PicCloud;
import com.vanroid.onebuy.common.QCloud;
import com.vanroid.onebuy.entity.Good;
import com.vanroid.onebuy.service.GoodService;
import com.vanroid.onebuy.util.PhotosStringUtil;

import net.sf.json.JSONObject;
/**
*@author kaiscript
*@date 2016年1月25日 下午3:07:43
*/
@Controller
@RequestMapping("/photo")
public class PhotoController {
	
	PicCloud pc = new PicCloud(QCloud.APP_ID_V2, QCloud.SECRET_ID_V2, QCloud.SECRET_KEY_V2, QCloud.BUCKET);
	
	@Resource(name = "goodService")
	private GoodService goodService;
	
	
	@RequestMapping("/getsign")
	@ResponseBody
	public JSONObject getSign(){
		long expired = System.currentTimeMillis()/1000 + 3600;
		String sign = pc.getSign(expired);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("url","http://web.image.myqcloud.com/photos/v2/"+QCloud.APP_ID_V2+"/"+QCloud.BUCKET+"/0/");
		jsonObject.put("sign",sign.toString());
		return jsonObject;
	}
		
	@RequestMapping("/uploadPhotoUrl")
	@ResponseBody
	public JSONObject uploadPicUrl(String goodId,String downloadUrl){//参数名字与前端传递的参数相同，则参数前面可以省略@PathVa..
		JSONObject json = new JSONObject();
		Good good = goodService.get(Long.parseLong(goodId));
		if(good!=null){
			String[] photos = PhotosStringUtil.addPhotoUrl(good.getDetailPhotos(), downloadUrl);
			good.setDetailPhotos(photos);
			goodService.update(good);
			json.put("code", 0);
			json.put("message", "success");
			
			return json;
		
		}
		json.put("code", 1);
		json.put("message", "fail");
		return json;
		
	}
	
}
