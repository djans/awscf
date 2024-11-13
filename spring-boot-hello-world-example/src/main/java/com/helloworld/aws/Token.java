package com.helloworld.aws;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class Token {
    public String getToken() throws IOException, InterruptedException {
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create("http://169.254.169.254/latest/api/token"))
                .header("X-aws-ec2-metadata-token-ttl-seconds", "21600")
                .method("PUT", HttpRequest.BodyPublishers.noBody())
                .build();
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        return response.body();
    }
}
