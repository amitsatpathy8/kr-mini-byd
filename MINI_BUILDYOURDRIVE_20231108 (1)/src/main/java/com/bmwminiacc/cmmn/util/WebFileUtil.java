package com.bmwminiacc.cmmn.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hsqldb.lib.FileUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.bmwminiacc.uploadFile.service.UploadFileVO;

/**
 * <pre>
 * 업로드, 다운로드  파일을 컨트롤 하는 유틸 클래스
 * 
 * <pre>
 * 
 * @ClassName   : WebFileUtil.java
 * @Description : 업로드, 다운로드  파일을 컨트롤 하는 유틸 클래스 
 * @author jkKim
 * @since 2012. 10. 10.
 * @version 1.0
 * @see
 * @Modification Information
 * 
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2012. 10. 10.     jkKim     최초 생성
 * </pre>
 */
public class WebFileUtil {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 파일이름시퀀스 (int)fileNameSeq
	 */
	private static int fileNameSeq;

	private static String imagePath = "";

	private static String uploadPath = "";

	private static String downloadPath = "";
	
	/**
	 * Statements
	 * 
	 */
	public WebFileUtil() {
	}

	public static String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		WebFileUtil.imagePath = imagePath;
	}

	public static String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		WebFileUtil.uploadPath = uploadPath;
	}

	public String getDownloadPath() {
		return downloadPath;
	}

	public void setDownloadPath(String downloadPath) {
		WebFileUtil.downloadPath = downloadPath;
	}

	/**
	 * 유니크한 파일명을 만들어 낸다.
	 * 
	 * @return String 파일명
	 */
	private static String getFileNameSeq() {
		SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.KOREA);
		return dataFormat.format(new Date()) + String.format("%03d", (++fileNameSeq % 1000));

	}

	public UploadFileVO upload(MultipartFile uploadFile) {
		return upload(uploadFile, "test");
	}

	public UploadFileVO realUpload(MultipartFile uploadFile, String path) {

		if (uploadFile.isEmpty()) {
			return null;
		}
		UploadFileVO fileVO = new UploadFileVO();
		try {
			fileVO.setFileNm(uploadFile.getOriginalFilename());
			SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
			String uploadDate = path;
			fileVO.setFilePath(imagePath + "/" + uploadDate);
			fileVO.setFileTmprNm(fileVO.getFileNm());
			fileVO.setFileSize(uploadFile.getSize());
			FileUtil.makeDirectories(uploadPath + "/" + uploadDate);
			File file = new File(uploadPath + "/" + uploadDate + fileVO.getFileNm());

			uploadFile.transferTo(file);
//			ftpUpload.fileUpload(imagePath + "/" + uploadDate, uploadFile);

		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return null;

		}// try end;

		return fileVO;
	}

	public static UploadFileVO upload(MultipartFile uploadFile, String path) {
		if (uploadFile.isEmpty()) {
			return null;
		}
		UploadFileVO fileVO = new UploadFileVO();
		try {
			fileVO.setFileNm(uploadFile.getOriginalFilename());

			SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
			String uploadDate = path + dataFormat.format(new Date());
			fileVO.setFilePath(imagePath + "/" + uploadDate);
			String filePrefix = fileVO.getFileNm().substring(fileVO.getFileNm().lastIndexOf("."));
			fileVO.setFileTmprNm(getFileNameSeq() + filePrefix);
			fileVO.setFileSize(uploadFile.getSize());
			FileUtil.makeDirectories(uploadPath + "/" + uploadDate);
			File file = new File(uploadPath + "/" + uploadDate + "/" + fileVO.getFileTmprNm());

			uploadFile.transferTo(file);
//			ftpUpload.fileUpload(uploadDate, uploadFile, fileVO.getFileTmprNm());
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return null;

		}// try end;

		return fileVO;
	}

	public List<UploadFileVO> upload(MultipartFile[] uploadFiles, String uploadPath) {

		List<UploadFileVO> fileList = new ArrayList<UploadFileVO>();
		for (int i = 0; i < uploadFiles.length; i++) {
			MultipartFile uploadFile = uploadFiles[i];

			if (uploadFile.isEmpty()) {
				continue;
			}
			try {
				fileList.add(upload(uploadFile, uploadPath));

			} catch (Exception e) {
				e.printStackTrace();

			}// try end;
		}
		return fileList;
	}

	public void downloadFile(HttpServletRequest request, HttpServletResponse response, String file, String fileName) throws Exception {
		//file.replaceAll("", "");
		File f = new File(downloadPath+file);
		System.out.println(downloadPath+file);
		downloadFile(request, response, f, fileName);
	}
	
	public void downloadFile(HttpServletRequest request, HttpServletResponse response, File file, String fileName) throws Exception {

		String strClient = request.getHeader("User-Agent");
		String fileType;

		if (strClient.indexOf("MSIE 5.5") != -1) {
			response.setHeader("Content-Disposition", "filename=" + new String(fileName.getBytes("euc-kr"), "8859_1") + ";");
			fileType = "doesn/matter";
		} else {
			response.setHeader("Content-Disposition", "attachment;filename=\"" + new String(fileName.getBytes("euc-kr"), "8859_1") + "\";");
			fileType = "application/octet-stream";
		}

		response.setContentType(fileType);
		BufferedInputStream bufferIn = null;
		BufferedOutputStream bufferOut = null;
		if (file.exists()) {
			try {
				bufferIn = new BufferedInputStream(new FileInputStream(file));
				bufferOut = new BufferedOutputStream(response.getOutputStream());
				int read = 0;

				while ((read = bufferIn.read()) != -1) {
					bufferOut.write(read);
				}
				bufferOut.flush();
			} catch (Exception e) {
				// log.error("파일 다운로드에 실패하였습니다.");
			} finally {
				try {
					if (bufferOut != null)
						bufferOut.close();
				} catch (IOException ie) {
				}

				try {
					if (bufferIn != null)
						bufferIn.close();
				} catch (IOException ie) {
				}
			}

		}
	}
	
	//파일 압축
	public static void zipFile( HttpServletRequest request, HttpServletResponse response, String[] file , String newzipNm ) throws IOException{
		try{
			String[] src = file;
			// 파일을 읽기위한 버퍼
			byte[] buf = new byte[1024];
			// 압축파일명 newzipNm = "/recruit/"+날짜+"recruitZip.zip"
			ZipOutputStream zipOut = new ZipOutputStream( new FileOutputStream(uploadPath + newzipNm) );
			// 파일 압축
			for ( int i = 0; i < file.length ; i++ ){
					FileInputStream fin = new FileInputStream( downloadPath+src[i] );
					// 압축 항목추가
					zipOut.putNextEntry( new ZipEntry( downloadPath+src[i] ));
					// 바이트 전송
					int len = 0;
					while ( ( len = fin.read(buf) ) > 0 ){
						zipOut.write( buf, 0, len);
					}
					zipOut.closeEntry();
					fin.close();
			}
			// 압축파일 작성
			zipOut.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	      
	}
	
	
	
	
	
    /**
     * 파일 이미지 처리(DB기준)
     * 
     * @param request
     * @param response
     * @param downloadFileVO
     * @throws Exception
     */
    public void downloadImageView(HttpServletRequest request,
            HttpServletResponse response, UploadFileVO downloadFileVO)
            throws Exception {                    
        imageView(downloadFileVO.getFilePath()
                    + downloadFileVO.getFileNm(),response);
    }
	
	
    /**
     * 이미지 처리
     *
     * @param imagePathP
     * @param response
     * @throws IOException
     */
    public static void imageView(String imagePathP, HttpServletResponse response)
            throws IOException {
        String imagePath = EasyString.replace(downloadPath + imagePathP, "\\", File.separator);        
        imagePath = EasyString.replace(imagePath, "/", File.separator);

        String extType = "$%^&*()!@#$";
        if (imagePath.lastIndexOf(".") >= 0) {
            extType = imagePath.substring(imagePath.lastIndexOf(".") + 1);
        }

        String contentType = "";
        response.setStatus(200);
        if ("/jpg/jpeg/jpe/jfif/png/".indexOf(extType.toLowerCase()) >= 0)
            contentType = "image/jpeg";
        else if ("/gif/".indexOf(extType.toLowerCase()) >= 0)
            contentType = "image/gif";
        else if ("/bmp/".indexOf(extType.toLowerCase()) >= 0)
            contentType = "image/bmp";
        else if ("/png/".indexOf(extType.toLowerCase()) >= 0)
            contentType = "image/png";
        else if ("/wbmp/".indexOf(extType.toLowerCase()) >= 0)
            contentType = "image/vnd.wap.wbmp";
        else {
            throw new IOException("The file is not an image.");
        }

        
        File imgFile = new File(imagePath);
        if ((!(imgFile.exists())) || (imgFile.isDirectory())) {
            return;
        }

        try{
            imageView(new FileInputStream(imgFile), response, contentType);
        }catch (IOException ie) {
            throw new IOException("이미지 파일 읽기 실패!");
        }
    }

    /**
     * 이미지 처리
     *
     * @param is
     * @param response
     * @param imageContentType
     * @throws IOException
     */
    public static void imageView(InputStream is, HttpServletResponse response,
            String imageContentType) throws IOException {
        response.setContentType(imageContentType);
        write(is, response.getOutputStream());
    }
	
    /**
     * 이미지 쓰기
     *
     * @param is
     * @param os
     * @throws IOException
     */
    public static void write(InputStream is, OutputStream os)
            throws IOException {
        if ((is == null) || (os == null)) {
            return;
        }
        byte[] buf = new byte[1024];
        int iReadSize = 0;
        try {
            while ((iReadSize = is.read(buf)) != -1) {
                os.write(buf, 0, iReadSize);
            }
            os.flush();
        } catch (IOException ie) {
        } finally {
            try {
                if (is != null)
                    is.close();
            } catch (IOException ie) {
            }
            try {
                if (os != null)
                    os.close();
            } catch (IOException ie) {
            }
        }
    }
	
	
}
