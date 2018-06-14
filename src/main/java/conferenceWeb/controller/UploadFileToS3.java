package conferenceWeb.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectSummary;

@Controller
public class UploadFileToS3 {
	private static final String SUFFIX = "/";
	
	public static String handleFileUpload(MultipartFile file) throws Exception {
		
		// credentials object identifying user for authentication
		//user must have AWSConnector and AmazonS3FullAccess for 
		// this example to work
		AWSCredentials credentials = new BasicAWSCredentials(
				"AKIAIMKCKKJFUJQEYI2A", 
				"yiGywl7S1qJq/PegGe6maHb7+S6FJ+NnFcaxdb7L");
		
		// create a client connection based on credentials
		AmazonS3 s3client = new AmazonS3Client(credentials);
		
		// create bucket - name must be unique for all S3 users
		String bucketName = "icsse";
		
		// list buckets
		for (Bucket bucket : s3client.listBuckets()) {
			System.out.println(" - " + bucket.getName());
		}
		
		try {
			InputStream is = file.getInputStream();
		// upload file to folder and set it to public
		String fileName = file.getOriginalFilename();
		s3client.putObject(new PutObjectRequest(bucketName, fileName, is, 
				new ObjectMetadata())
				.withCannedAcl(CannedAccessControlList.PublicRead));
		
		//get a reference to the image object
		S3Object s3object = s3client.getObject(new GetObjectRequest(bucketName, file.getOriginalFilename()));
		//
		String url = s3object.getObjectContent().getHttpRequest().getURI().toString();
		return url;
		}
		catch (IOException e) {
			e.printStackTrace();
			return "error";
		}
		
	}
	public static void createFolder(String bucketName, String folderName, AmazonS3 client) {
		// create meta-data for your folder and set content-length to 0
		ObjectMetadata metadata = new ObjectMetadata();
		metadata.setContentLength(0);
		// create empty content
		InputStream emptyContent = new ByteArrayInputStream(new byte[0]);
		// create a PutObjectRequest passing the folder name suffixed by /
		PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName,
				folderName + SUFFIX, emptyContent, metadata);
		// send request to S3 to create folder
		client.putObject(putObjectRequest);
	}
}
