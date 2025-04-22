INSERT INTO users (email, password, name, role)
VALUES ('admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
       ('siva@gmail.com', 'secret', 'Siva', 'ROLE_USER');

INSERT INTO short_urls (short_key, original_url, created_by, created_at, expires_at, is_private, click_count)
VALUES ('rs1Aed', 'https://www.baeldung.com/spring-boot', 1, TIMESTAMP '2024-07-15', NULL, FALSE, 0),
       ('hujfDf', 'https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-22-04', 1, TIMESTAMP '2024-07-16', NULL, FALSE, 0),
       ('ertcbn', 'https://spring.io/guides/gs/spring-boot/', 1, TIMESTAMP '2024-07-17', NULL, FALSE, 0),
       ('edfrtg', 'https://www.geeksforgeeks.org/introduction-to-spring-boot/', 1, TIMESTAMP '2024-07-18', NULL, TRUE, 0),
       ('vbgtyh', 'https://www.baeldung.com/spring-boot-auto-configuration', 1, TIMESTAMP '2024-07-19', NULL, FALSE, 0),
       ('rtyfgb', 'https://www.javatpoint.com/spring-boot-tutorial', 1, TIMESTAMP '2024-07-25', NULL, FALSE, 0),
       ('rtvbop', 'https://www.freecodecamp.org/news/spring-boot-tutorial/', 1, TIMESTAMP '2024-07-26', NULL, FALSE, 0),
       ('2wedfg', 'https://www.baeldung.com/spring-data-rest-intro', 1, TIMESTAMP '2024-07-27', NULL, TRUE, 0),
       ('6yfrd4', 'https://www.jetbrains.com/idea/guide/tutorials/spring-boot/', 1, TIMESTAMP '2024-07-28', NULL, FALSE, 0),
       ('r5t4tt', 'https://www.springcloud.io/post/2022-08/spring-boot-guide/', 1, TIMESTAMP '2024-07-29', NULL, FALSE, 0),

       ('ffr4rt', 'https://stackabuse.com/guide-to-spring-boot-annotations/', 1, TIMESTAMP '2024-08-10', NULL, FALSE, 0),
       ('9oui7u', 'https://auth0.com/blog/complete-guide-to-spring-boot/', 1, TIMESTAMP '2024-08-11', NULL, FALSE, 0),
       ('cvbg5t', 'https://www.educative.io/blog/spring-boot-java', 1, TIMESTAMP '2024-08-12', NULL, FALSE, 0),
       ('nm6ytf', 'https://www.digitalocean.com/community/tutorial_series/spring-boot', 1, TIMESTAMP '2024-08-13', NULL, FALSE, 0),

       ('tt5y6r', 'https://dzone.com/articles/spring-boot-overview', 1, TIMESTAMP '2024-08-14', NULL, FALSE, 0),
       ('fgghty', 'https://www.theserverside.com/feature/Spring-Boot-tutorial-The-ultimate-get-started-guide', 1, TIMESTAMP '2024-08-15', NULL, FALSE, 0),
       ('f45tre', 'https://www.baeldung.com/spring-boot-starter-parent', 1, TIMESTAMP '2024-08-16', NULL, FALSE, 0),
       ('54rt54', 'https://stackoverflow.blog/2020/12/14/spring-boot-tutorial-getting-started-with-microservices/', 1, TIMESTAMP '2024-08-17', NULL, FALSE, 0);
