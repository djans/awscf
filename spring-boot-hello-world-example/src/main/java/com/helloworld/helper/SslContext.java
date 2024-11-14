package com.helloworld.helper;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.KeyStore;

public class SslContext {

    // Helper function to create a custom SSLContext
    public static SSLContext createSSLContext() throws Exception {
        // Load the KeyStore (if needed for client authentication)
        // InputStream keyStoreStream = new FileInputStream("path_to_your_keystore");
        // KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        // keyStore.load(keyStoreStream, "your_keystore_password".toCharArray());

        // Load the truststore (if needed for trusting server certificates)
        KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
        try (InputStream trustStoreStream = new FileInputStream("path_to_truststore")) {
            trustStore.load(trustStoreStream, "your_truststore_password".toCharArray());
        }

        // Initialize TrustManager to trust the certificates in the truststore
        TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        tmf.init(trustStore);

        // Initialize SSLContext with the TrustManager
        SSLContext sslContext = SSLContext.getInstance("TLS");
        sslContext.init(null, tmf.getTrustManagers(), new java.security.SecureRandom());

        return sslContext;
    }
}
