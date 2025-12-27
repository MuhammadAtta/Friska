package com.friska.application.mapper;

import com.friska.domain.model.User;
import com.friska.application.dto.UserDto;

public class UserMapper {
    public static UserDto toDto(User user) {
        return new UserDto(user.getId(), user.getName(), user.getEmail());
    }

    public static User toEntity(UserDto dto) {
        return new User(dto.getId(), dto.getName(), dto.getEmail());
    }
}