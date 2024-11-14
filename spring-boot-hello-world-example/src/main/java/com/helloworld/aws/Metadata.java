package com.helloworld.aws;

import com.helloworld.helper.SslContext;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import javax.net.ssl.*;

public class Metadata {
    public String getMetdata(String urlString) throws Exception {
        // Load custom SSL context and certificates if necessary
        SSLContext sslContext = new SslContext().createSSLContext();
        // Create an HttpClient instance
        HttpClient client = HttpClient.newBuilder()
                .sslContext(sslContext)
                .build();
        String baseUrl = "http://169.254.169.254/latest/meta-data/";
        String token = new Token().getToken();

        // Create a request
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(urlString))
                .header("X-aws-ec2-metadata-token", token)
                .build();

        // Send the request and get the response
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

        // Return the content (body of the response)
        return response.body();

    }
}
