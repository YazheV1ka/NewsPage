package org.example.Repository;

import org.example.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public interface NewsRepository extends JpaRepository<News,Integer> {

    @Query(value = "select * from news n where n.content = '%?'", nativeQuery = true)
    List<News> findByKeyWord(String content);

    @Query(value = "select * from news n where n.category = ?", nativeQuery = true)
    List<News> findByCategory(String category);


}
