package com.helloworld.database;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    // You can define custom queries here if needed, e.g., findByEmail
}

