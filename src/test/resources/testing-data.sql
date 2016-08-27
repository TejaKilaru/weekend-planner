INSERT INTO user(id, name, email, mobile, userid) VALUES (1, 'Blake', 'blake@practo.com', '9988776655', null);
INSERT INTO user(id, name, email, mobile, userid) VALUES (2, 'Cam', 'cam@practo.com', '9988776644', null);
INSERT INTO location(id, name, type, image_url) VALUES (1, 'Wonderla', 'Water Sports', 'URL');
INSERT INTO location(id, name, type, image_url) VALUES (2, 'Nandi Hills', 'Hill Station', 'URL');
INSERT INTO trips(id, posted_by, modify_on, start_date, end_date, book_end_date, avg_cost, location, description, vacancy, total_people, travel_by, delete_status) VALUES (1, 2, '2016-08-29 14:56:55', '2016-08-30 14:56:55', '2016-08-31 14:56:55', '2016-08-30 14:56:55', '800', 1, 'cool....', 5, 8, 'tempo', 'false');  
INSERT INTO relation_trip_user(id, trip_id, user_id, delete_status, modify_by, modify_on) VALUES (1, 1, 1, 'false', 1, '2016-08-30 14:56:55');