var goodId = document.getElementById('uploadScript').getAttribute('data');
$(document).ready(function(){
	initUploadForm();
});

$('input[name=FileContent]').change(function () {
	initUploadForm();
});

function initUploadForm () {
	$.getJSON(BASE_URL+'/photo/getsign', function(data) {
		var sign = data.sign;
		var url = data.url + '?sign=' + encodeURIComponent(sign);
		var options = { 
	            type: 'post',
	            url: url,
	            dataType: 'json',
			    success:function(ret) { 
			    	uploadImgUrl(ret.data.download_url);
			    	//alert(ret.data.download_url);
			    	//alert(ret.data.fileid);
			    	//alert(ret.data.url);
			    },
			    error:function (ret) {
			    	alert('上传失败，请重试:'+ret.responseText);
			    }
			}; 
			// pass options to ajaxForm 
			$('#uploadForm').ajaxForm(options);
	});	
}


function uploadImgUrl(downloadurl){
	$.ajax({
		type:'POST',
		url:  BASE_URL+'/photo/uploadPhotoUrl',
		data:{
			'goodId':goodId,
			'downloadUrl':downloadurl
		},
		dateType : 'json',
		success:function(data){
			if(data.code==0){
	    		alert("上传头像成功,刷新查看");
			}
			else if(data.code==1)
				alert("上传失败，请重试");
		}
	});
}