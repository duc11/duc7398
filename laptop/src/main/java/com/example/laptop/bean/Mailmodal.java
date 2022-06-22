package com.example.laptop.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Mailmodal {
    String from;
    String to;
    String cc;
    String bcc;
    String subject;
    String body;
    String files;

    public Mailmodal(String from, String to, String subject, String body) {
        this.from = from;
        this.to = to;
        this.subject = subject;
        this.body = body;
    }
}
