package com.example.inventory;

import com.example.inventory.service.ProductService;
import com.example.inventory.repository.ProductRepository;
import com.example.inventory.model.Product;


import static org.mockito.Mockito.*;
import static org.assertj.core.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

public class ProductServiceTest {

    @Mock
    private ProductRepository productRepository;

    @InjectMocks
    private ProductService productService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testCreateProduct() {
        Product product = new Product("Équipement de fitness", "Équipement de fitness", 99.99, "Sport", 40);
        when(productRepository.save(any(Product.class))).thenReturn(product);

        Product createdProduct = productService.createProduct(product);

        assertThat(createdProduct.getName()).isEqualTo("Équipement de fitness");
        verify(productRepository, times(1)).save(product);
    }
}
