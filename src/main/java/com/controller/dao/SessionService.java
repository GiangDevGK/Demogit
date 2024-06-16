package com.controller.dao;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Service;

@Service
public class SessionService {

    private final HttpSession session;

    public SessionService(HttpSession session) {
        this.session = session;
    }

    public void set(String key, String value) {
        session.setAttribute(key, value);
    }

    public String get(String key, String defaultValue) {
        String value = (String) session.getAttribute(key);
        return value != null ? value : defaultValue;
    }
}
