<!DOCTYPE html>
<html>
<head>
	<title>Data Design</title>
	<link rel="stylesheet" type="text/css" href="styles/style.css">
	<link href="https://fonts.googleapis.com/css?family=Oswald|Raleway&display=swap" rel="stylesheet">
</head>
<nav class="main-nav">
	<ul>
		<li><a href="index.php">Home</a></li>
		<li><a href="persona.php"> Persona</a></li>
		<li><a href="user-story.php">User Story</a></li>
		<li><a href="use-case-interaction.php">Use Case & Interaction</a></li>
		<li><a href="conceptual-model-entity-diagram.php">Conceptual Model & ERD</a></li>
	</ul>
</nav>
<body>
	<h1>Conceptual Model & ERD</h1>
		<h2>Conceptual Model</h2>
			<h3>Entities & Attributes</h3>
				<h4>Profile</h4>
					<ul>
						<li>profileId (primary key)</li>
						<li>profileActivationToken (for account verification)</li>
						<li>profileEmail</li>
						<li>profileHash</li>
						<li>profileType</li>
					</ul>
				<h4>Movie</h4>
					<ul>
						<li>movieID (primary key)</li>
						<li>movieTitle</li>
						<li>movieCharacters</li>
						<li>movieGenre</li>
						<li>movieRating</li>
						<li>movieDescription</li>
					</ul>
				<h4>List</h4>
					<ul>
						<li>listID(primary key)</li>
						<li>listProfileID(foreign key)</li>
						<li>listMovieID(foreign key</li>
					</ul>
	<h3>Relations</h3>
	<ul>
		<li>Many profiles can have One list</li>
		<li>One list can have many movies</li>
	</ul>
<h2>ERD</h2>
	<img src="images/phase2-erd.png" alt="Phase 2 ERD" class="erd-image">
</body>
</html>