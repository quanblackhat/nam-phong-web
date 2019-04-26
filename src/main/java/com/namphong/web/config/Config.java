package com.namphong.web.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.PathResourceResolver;


/**
 * The class for application configuration.
 */
@Configuration
@EnableWebMvc
public class Config extends WebMvcConfigurerAdapter {

    @Value("${directory.images}")
    private String imagesDirectory;

    /**
     * Configure ResourceHandlers to serve static resources like CSS/ Javascript/Images etc...
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if (!registry.hasMappingForPattern("/static/assets/**")) {
            registry.addResourceHandler("/static/assets/**").addResourceLocations("classpath:/static/assets/");
        }

        if (!registry.hasMappingForPattern("/static/assets/**")) {
            registry.addResourceHandler("/static/assets/**").addResourceLocations("classpath:/static/new-assets/");
        }

        if (!registry.hasMappingForPattern("/images/**")) {
            registry.addResourceHandler("/images/**")
                    .addResourceLocations("file:" + imagesDirectory)
                    .setCachePeriod(3600)
                    .resourceChain(true)
                    .addResolver(new PathResourceResolver());
        }
    }

}
