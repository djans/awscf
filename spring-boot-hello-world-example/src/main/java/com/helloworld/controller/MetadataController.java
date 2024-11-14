package com.helloworld.controller;

import com.helloworld.aws.Metadata;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.io.IOException;

@Controller
public class MetadataController {

    @GetMapping("/metadata")
    public String showMetadata(Model model) throws Exception {
        // Fetch metadata from the service layer
        Metadata metadata = new Metadata();
        model.addAttribute("instance-id", metadata.getMetdata("instance-id"));
        model.addAttribute("instance-type", metadata.getMetdata("instance-type"));
        model.addAttribute("instance-life-cycle", metadata.getMetdata("instance-life-cycle"));
        model.addAttribute("region", metadata.getMetdata("/placement/region"));
        model.addAttribute("availability-zone", metadata.getMetdata("/placement/availability-zone"));
        return "metadata";  // Return the 'metadata.html' view

    }
}
