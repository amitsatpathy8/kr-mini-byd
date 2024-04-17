package com.bmwminiacc.uploadFile.web;

import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bmwminiacc.cmmn.util.WebFileUtil;
import com.bmwminiacc.uploadFile.service.UploadFileService;
import com.bmwminiacc.uploadFile.service.UploadFileVO;

/**  
 * 에디터 파일 업로드 컨트롤러
 * @Class Name : UploadFileController.java
 * @Description : 에디터 파일 업로드 컨트롤러
 * @Modification Information  
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2016. 7. 26.   jkKim           최초생성
 * 
 * @author jkKim 
 * @since 2016. 7. 26.
 * @version 1.0
 * @see
 * 
 */
@Controller
@RequestMapping("/file/*")
public class UploadFileController {


	@Resource(name = "uploadFileService")
	private UploadFileService uploadFileService;
	
	private final static String UPLOAD_PATH = "editor/";
	
	
	
	@Autowired(required = false)
	private WebFileUtil webFileUtil;
	
	public UploadFileController() {
		super();
	}
	
	/**
	 * 에디터 파입 업로더 
	 * @param searchVO
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "editorUploader.do", method = RequestMethod.POST)
	public String editorUploader(@RequestParam(value = "Filedata", required = false) MultipartFile image,
			@RequestParam("callback_func") String callbackFunc,
			@RequestParam("callback") String callback,HttpSession session, ModelMap model, HttpServletRequest request) throws Exception {
		
		if (image != null && !image.isEmpty()) {
			// 아이디를 가져온다.
			UploadFileVO uploadFileVO = webFileUtil.upload(image, UPLOAD_PATH);
			return "redirect:/editor/photo_uploader/popup/callback.html?bNewLine=true&sFileName="+ URLDecoder.decode(uploadFileVO.getFileNm())
					+"&sFileURL="+ URLDecoder.decode(uploadFileVO.getUrl())+"&callback_func="+callbackFunc;
		}
		return "redirect:"+callback;
	}
	
	/**
	 * 파일 다운로드 
	 * @param vo
	 * @param session
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/download.do", method = RequestMethod.GET)
	public void fileDownload(@RequestParam(value = "filePath") String filePath,
			@RequestParam(value = "fileNm") String fileNm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		webFileUtil.downloadFile(request, response, filePath, fileNm);
	}
	
	/**
	 * 이미지 뷰
	 * @param vo
	 * @param session
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/imageView.do", method = RequestMethod.GET)
	public void imageView(@RequestParam(value = "filePath") String filePath,
			@RequestParam(value = "fileNm") String fileNm, HttpServletRequest request, HttpServletResponse response) throws Exception {		
		UploadFileVO fileVO = new UploadFileVO(); 
		fileVO.setFilePath(filePath);
		fileVO.setFileNm(fileNm);
		webFileUtil.downloadImageView( request, response, fileVO);
	}
		

}