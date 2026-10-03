# 🎬 CineSuper — Mini OTT Movie Database

**Live Demo:** https://sanadseydmohamed.github.io/cinesuper-jsoft26094/

**Student:** SANAD SEYD MOHAMED | **Reg No:** JSOFT26094
**Institution:** Jain School of Future Technology
**Course:** Database Management Systems | **Faculty:** Sathish Kumar M

## Tech Stack
- Supabase (PostgreSQL) – database
- HTML, CSS, JavaScript – frontend
- GitHub Pages – hosting

## Database
- genres (id, name)
- movies (id, title, release_year, language, duration_min, description, poster_url, genre_id → genres)
- reviews (id, movie_id → movies, reviewer_name, rating 1–5, comment, created_at)
- View: movie_ratings (average rating per movie)
- SQL scripts: see the `database/` folder

## Features
- Browse, search and filter movies
- Movie details with reviews
- Add a review (saved to the database)
- Row Level Security enabled


## My Personalisation
- New movies added:  Kumbalangi Nights, Bheeshma Parvam, Bramayugam, Ennu Ninte Moideen, Vinnaithaandi Varuvaayaa
- New column: director (shown in the movie popup as "Directed by")
- Extra feature: Language filter dropdown