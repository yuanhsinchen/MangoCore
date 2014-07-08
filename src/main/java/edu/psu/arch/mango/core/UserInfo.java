package edu.psu.arch.mango.core;

public class UserInfo {

    private final long id;
    private final String content;

    public UserInfo(long id, String content) {
        this.id = id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }
}
