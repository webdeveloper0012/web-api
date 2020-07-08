package com.commons.service.impl;

import org.springframework.stereotype.Service;

import com.commons.entity.User;
import com.commons.repository.UserRepository;
import com.commons.service.BasicService;
import com.commons.service.UserService;

@Service
public class UserServiceImpl extends BasicService<User, UserRepository> implements UserService {

}
