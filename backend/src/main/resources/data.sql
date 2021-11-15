INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Marley', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 'https://w7.pngwing.com/pngs/989/932/png-transparent-computer-icons-course-learning-education-training-angle-text-rectangle.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ( 'Trilha HTML', 'Trilha principal do curso', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 1, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ( 'Forum', 'Tire suas dúvidas', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 2, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ( 'Lives', 'Lives exclusivas para as turmas', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ( 'Capitulo 1', 'Inicio da trilha', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ( 'Capitulo 2', 'Continuação', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ( 'Capitulo 3', 'Fim da trilha', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpxhere.com%2Fen%2Fphoto%2F1443423&psig=AOvVaw3l918gu7wFQqFSXSW_0Vlr&ust=1636991612584000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDz-pGbmPQCFQAAAAAdAAAAABAD', 1, 2); 

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 / Capítulo 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio : abc', 'https://www.youtube.com/watch?v=IY3BxQJ0BxI', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 / Capítulo 1', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('', 'https://www.youtube.com/watch?v=IY3BxQJ0BxI', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 / Capítulo 1', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('', 'https://www.youtube.com/watch?v=IY3BxQJ0BxI', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa 1 / Capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
