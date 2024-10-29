package com.example.inventory.service;

import com.example.inventory.model.Product;
import com.example.inventory.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    // Récupère tous les produits
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    // Récupère un produit par son ID
    public Optional<Product> getProductById(Long id) {
        return productRepository.findById(id);
    }

    // Crée un nouveau produit
    public Product createProduct(Product product) {
        return productRepository.save(product);
    }

    // Met à jour un produit existant
    public Optional<Product> updateProduct(Long id, Product productDetails) {
        // Vérifie si le produit existe
        return productRepository.findById(id).map(product -> {
            product.setName(productDetails.getName());
            product.setDescription(productDetails.getDescription());
            product.setPrice(productDetails.getPrice());
            product.setCategory(productDetails.getCategory());
            product.setStock(productDetails.getStock());
            return productRepository.save(product);
        });
    }

    // Supprime un produit par son ID
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    // Récupère les produits par catégorie
    public List<Product> getProductsByCategory(String category) {
        return productRepository.findByCategory(category);
    }
}
