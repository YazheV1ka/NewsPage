package org.example.Repository;

import org.example.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface NewsRepository extends JpaRepository<News,Integer> {

    @Query(value = "select * from news_page.news n where n.content = :content", nativeQuery = true)
    List<News> findByKeyWord(@Param("content")String content);

    @Query(value = "select * from news_page.news n where n.category = :category", nativeQuery = true)
    List<News> findByCategory(@Param("category") String category);


}
