package com.dharani.urlshortener.domain.models;

import com.dharani.urlshortener.domain.entities.User;

import java.io.Serializable;

/**
 * DTO for {@link User}
 */
public record UserDto(Long id, String name) implements Serializable {
}