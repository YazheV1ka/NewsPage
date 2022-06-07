package org.example;

import lombok.*;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@Data
@AllArgsConstructor
@Entity
@Table(name = "news")
@NoArgsConstructor
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    @NotBlank
    @Column(name = "title")
    private String Title;
    @NotBlank
    @Column(name = "content")
    private String Content;
    @NotBlank
    @Column(name = "category")
    private String Category;
    @NotBlank
    @Column(name = "date")
    private Date Date;

}
