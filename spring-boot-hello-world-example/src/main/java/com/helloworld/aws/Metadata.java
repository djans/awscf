package com.helloworld.aws;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class Metadata {
    public String getMetdata(String urlString) throws IOException, InterruptedException {
// Create an HttpClient instance
        HttpClient client = HttpClient.newHttpClient();
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
