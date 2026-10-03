insert into genres (name) values ('Horror'), ('Romance');

insert into movies (title, release_year, language, duration_min, description, poster_url, genre_id) values
  ('Kumbalangi Nights', 2019, 'Malayalam', 135,
   'Four brothers in a Kerala fishing village slowly learn how to become a family.',
   'https://placehold.co/300x450/0f766e/ffffff?text=Kumbalangi+Nights',
   (select id from genres where name = 'Drama')),
  ('Bheeshma Parvam', 2022, 'Malayalam', 158,
   'The head of a Kochi family faces a deadly feud as old secrets come out.',
   'https://placehold.co/300x450/450a0a/ffffff?text=Bheeshma+Parvam',
   (select id from genres where name = 'Action')),
  ('Bramayugam', 2024, 'Malayalam', 139,
   'A folk singer takes shelter in a strange mansion and discovers its dark secret.',
   'https://placehold.co/300x450/18181b/ffffff?text=Bramayugam',
   (select id from genres where name = 'Horror')),
  ('Ennu Ninte Moideen', 2015, 'Malayalam', 165,
   'A true love story set in 1960s Kerala, based on the real romance of Moideen and Kanchanamala.',
   'https://placehold.co/300x450/9f1239/ffffff?text=Ennu+Ninte+Moideen',
   (select id from genres where name = 'Romance')),
  ('Vinnaithaandi Varuvaayaa', 2010, 'Tamil', 160,
   'A young filmmaker falls for a girl from a different religion and fights to win her family.',
   'https://placehold.co/300x450/7c3aed/ffffff?text=Vinnaithaandi+Varuvaayaa',
   (select id from genres where name = 'Romance'));

alter table movies add column director text;
update movies set director = 'Jeethu Joseph' where title = 'Drishyam';
update movies set director = 'Christopher Nolan' where title in ('Memento', 'The Dark Knight', 'Inception', 'Interstellar', 'Oppenheimer');
   update movies set director = case title
  when 'Premam' then 'Alphonse Puthren'
  when 'Bangalore Days' then 'Anjali Menon'
  when 'Minnal Murali' then 'Basil Joseph'
  when 'Manjummel Boys' then 'Chidambaram'
  when 'Vikram' then 'Lokesh Kanagaraj'
  when '96' then 'C. Prem Kumar'
  when 'Jai Bhim' then 'T. J. Gnanavel'
  when 'Kumbalangi Nights' then 'Madhu C. Narayanan'
  when 'Bheeshma Parvam' then 'Amal Neerad'
  when 'Bramayugam' then 'Rahul Sadasivan'
  when 'Ennu Ninte Moideen' then 'R. S. Vimal'
  when 'Vinnaithaandi Varuvaayaa' then 'Gautham Vasudev Menon'
end
where director is null;
- Extra feature: Language filter dropdown