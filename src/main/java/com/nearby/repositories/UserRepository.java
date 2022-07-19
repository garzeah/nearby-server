package com.nearby.repositories;

import com.nearby.models.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class UserRepository {
    @PersistenceContext
    private EntityManager entityManager;

    public User create(User user) {
        entityManager.persist(user);
        entityManager.flush();
        return user;
    }
}
