package com.friska.application.service;

import com.friska.application.dto.UserDto;
import com.friska.domain.model.User;
import com.friska.domain.repository.UserRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.util.Optional;

public class UserServiceTest {
    private UserRepository userRepository;
    private UserService userService;

    @BeforeEach
    void setUp() {
        userRepository = Mockito.mock(UserRepository.class);
        userService = new UserService(userRepository);
    }

    @Test
    void testCreateUser() {
        User user = new User(1L, "Alice", "alice@example.com");
        Mockito.when(userRepository.save(Mockito.any())).thenReturn(user);
        UserDto userDto = new UserDto(null, "Alice", "alice@example.com");
        UserDto result = userService.createUser(userDto);
        Assertions.assertNotNull(result.getId());
        Assertions.assertEquals("Alice", result.getName());
    }

    @Test
    void testGetUser() {
        User user = new User(2L, "Bob", "bob@example.com");
        Mockito.when(userRepository.findById(2L)).thenReturn(Optional.of(user));
        UserDto userDto = userService.getUser(2L);
        Assertions.assertEquals("Bob", userDto.getName());
    }
}