package org.example;

import lombok.*;
import javax.persistence.*;

@Data
@AllArgsConstructor
@Entity
@Table(name = "news")
@NoArgsConstructor
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;
    @Column(name = "title")
    public String title;
    @Column(name = "content")
    public String content;
    @Column(name = "category")
    public String category;
    @Column(name = "date")
    public String date;

}
