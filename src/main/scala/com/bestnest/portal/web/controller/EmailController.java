package com.bestnest.portal.web.controller;

import com.bestnest.domain.ClientInformation;
import com.bestnest.service.ClientInformationService;
import com.bestnest.service.EmailService;
import com.bestnest.util.Constant;
import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class EmailController {

	private static final Logger logger = Logger.getLogger("emailLogger");
	
	@Autowired
	ClientInformationService clientInformationService;

	@Autowired
	private EmailService emailService;

	/* Sending confirmation page. */
	@RequestMapping("/sent.html")
	public String sent() {
		return "sent.html";
	}

	@RequestMapping("/email")
	public String emailRedirect() {
		return "email";
	}

	/* Home page. */
	@RequestMapping("/emailp.htm")
	public String email() {
		return "email.html";
	}

	/*
	 * Send HTML mail (simple)
	 */
	@RequestMapping(value = "/sendMailSimple", method = RequestMethod.POST)
	public String sendSimpleMail(
			@RequestParam("fromEmailText") final String fromEmailText,
			@RequestParam("recipientName") final String recipientName,
			@RequestParam("recipientEmail") final String recipientEmail,
			@RequestParam("subject") final String subject, final Locale locale)
			throws MessagingException {

		this.emailService.sendSimpleMail(fromEmailText, recipientName,
				recipientEmail, subject, locale);
		return "sent";

	}

	/*
	 * Send HTML mail with attachment.
	 */
	@RequestMapping(value = "/sendMailWithAttachment", method = RequestMethod.POST)
	public String sendMailWithAttachment(
			@RequestParam("fromEmailText") final String fromEmailText,
			@RequestParam("recipientName") final String recipientName,
			@RequestParam("recipientEmail") final String recipientEmail,
			@RequestParam("subject") final String subject,
			@RequestParam("attachment") final MultipartFile attachment,
			final Locale locale) throws MessagingException, IOException {

		this.emailService.sendMailWithAttachment(fromEmailText, recipientName,
				recipientEmail, subject, attachment.getOriginalFilename(),
				attachment.getBytes(), attachment.getContentType(), locale);
		return "sent";

	}

	/*
	 * Send HTML mail with inline image
	 */
	@RequestMapping(value = "/sendMailWithInlineImage", method = RequestMethod.POST)
	public String sendMailWithInline(
			@RequestParam("fromEmailText") final String fromEmailText,
			@RequestParam("recipientName") final String recipientName,
			@RequestParam("recipientEmail") final String recipientEmail,
			@RequestParam("subject") final String subject,
			@RequestParam("image") final MultipartFile image,
			final Locale locale) throws MessagingException, IOException {

		this.emailService.sendMailWithInline(fromEmailText, recipientName,
				recipientEmail, subject, image.getName(), image.getBytes(),
				image.getContentType(), locale);
		return "sent";

	}

	/*
	 * Send HTML mail with inline image
	 */
	@RequestMapping(value = "/sendBulkMailWithInlineImage", method = RequestMethod.POST)
	public String sendBulkMailWithInline(
			@RequestParam("fromEmailText") final String fromEmailText,
			@RequestParam("subject") final String subject,
			@RequestParam("image") final MultipartFile image,
			final Locale locale) throws Exception {

		List<ClientInformation> clList = clientInformationService.findAll();

		List<ClientInformation> newClList = new ArrayList<ClientInformation>();

		for (ClientInformation clientInformation : clList) {
			if (clientInformation.getEmail() != null
					&& !clientInformation.getEmail().equals("")) {
				newClList.add(clientInformation);
			}
		}

		this.emailService.sendBulkMailWithInline(fromEmailText, subject,
				image.getName(), image.getBytes(), image.getContentType(),
				locale, newClList);
		return "sent";

	}

	/*
     * Send HTML mail with inline image
     */
	@RequestMapping(value = "/sendBulkMailFromExcelWithInlineImage", method = RequestMethod.POST)
	public String sendBulkMailFromExcelWithInlineImage(
			@RequestParam("fromEmailText") final String fromEmailText,
			@RequestParam("subject") final String subject,
			@RequestParam("image") final MultipartFile image,
			@RequestParam("excelFile") final MultipartFile excelFile,
			final Locale locale,  HttpSession session) throws Exception {

		logger.info(" send Bulk Mail From Excel With Inline Image ... " + "EmailController{" +
				"fromEmailText='" + fromEmailText + '\'' +
				", subject='" + subject + '\'' +
				", image=" + image +
				", excelFile=" + excelFile +
				'}');

		List<ClientInformation> clntInfoList = getExcelDatat(excelFile.getBytes());


		this.emailService.sendBulkMailFromExcelWithInline(fromEmailText,
				subject, image.getName(), image.getBytes(),
				image.getContentType(), locale, clntInfoList);
		return "sent";

	}
	
	private String getFileName(String fName) {
		
		Pattern p = Pattern.compile("(.*?)(\\d+)?(\\..*)?");
		do{
		    Matcher m = p.matcher(fName);
		    if(m.matches()){//group 1 is the prefix, group 2 is the number, group 3 is the suffix
		        fName = m.group(1) + (m.group(2) == null ? 1 : (Integer.parseInt(m.group(2)) + 1)) + (m.group(3)==null?"":m.group(3));
		    }
		}while(new File(Constant.EXCEL_SAVE_PATH + File.separator + fName).exists());
		
		return fName;
	}
	
	
	
	private List<ClientInformation> getExcelDatat(final byte[] imageBytes) {
		
		logger.info(" Converting excel data into List<ClientInformation>  ");
		
		InputStream is = new ByteArrayInputStream(imageBytes);
		org.apache.poi.ss.usermodel.Sheet sheet = null;
		List<ClientInformation> clntInfoList = new ArrayList<ClientInformation>();
		
		try {
			try {
				org.apache.poi.ss.usermodel.Workbook workbook = WorkbookFactory.create(is);
				sheet = workbook.getSheetAt(0);
			} catch (Exception e) {
				logger.error("Error while creating WorkbookFactory.create(is) ..", e);
				throw new RuntimeException("Error while creating WorkbookFactory.create(is), pelase see log", e);
			}
			// Get first sheet from the workbook

			// Iterate through each rows from first sheet
			Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				System.out.println();
				org.apache.poi.ss.usermodel.Row row = rowIterator.next();
				// For each row, iterate through each columns
				if (row.getRowNum() != 0) {
					Iterator<Cell> cellIterator = row.cellIterator();
					ClientInformation clnInfo = new ClientInformation();

					while (cellIterator.hasNext()) {
						Cell cell = cellIterator.next();
						int colIndex = cell.getColumnIndex();
						switch (colIndex) {
						case 1:
							clnInfo.setFirstName(cell.getStringCellValue());
							break;
						case 2:
							clnInfo.setLastName(cell.getStringCellValue());
							break;
						case 3:
							clnInfo.setEmail(cell.getStringCellValue());
							break;
						}
					}
					clntInfoList.add(clnInfo);
				}
			}
		} catch (Exception e) {
			logger.error("Error while iterating  sheet.iterator() ..", e);
			throw new RuntimeException("Error while iterating  sheet.iterator() ...., pelase see log", e);
		}
		
		logger.info(" Created client information list successfully, size: " + clntInfoList.size());
		return clntInfoList;
	}

	@ExceptionHandler(Exception.class)
	public String error() {
		return "error";
	}

	@RequestMapping(value = "/submitContactUs", method = RequestMethod.POST)
	public String submitContactUs(@RequestParam("name") final String name,
			@RequestParam("email") final String email,
			@RequestParam("telephone") final String telephone,
			@RequestParam("comments") final String comments, final Locale locale)
			throws MessagingException {

		System.out.println(" Print " + name + " -- " + email);

		return "redirect:sent";

	}
}
