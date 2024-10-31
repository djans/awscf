package com.helloworld.controller;

import com.helloworld.helper.S3Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import software.amazon.awssdk.services.s3.model.Bucket;

import java.io.IOException;
import java.util.List;

@RestController
public class AwsInfoController {
    @RequestMapping("/awsInfo")
    public String awsInfo(){
        String info="";
        S3Service s3Service=new S3Service();
        List<Bucket> buckets=s3Service.listBuckets();
        for (Bucket bucket:buckets){
            info+=bucket.name();
        }
        return info;
    }
}
