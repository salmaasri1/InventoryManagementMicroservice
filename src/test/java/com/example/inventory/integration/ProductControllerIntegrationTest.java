package com.example.inventory.integration; // Assurez-vous que cela correspond à votre structure de package

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

@SpringBootTest
@AutoConfigureMockMvc
public class ProductControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testCreateProduct() throws Exception {
        String productJson = "{\"name\": \"Équipement de fitness\", \"quantity\": 40, \"price\": 99.99, \"category\": \"Sport\"}";

        mockMvc.perform(post("/api/products")
                        .contentType("application/json")
                        .content(productJson))
                .andExpect(status().isCreated());
    }
}
