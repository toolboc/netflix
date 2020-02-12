# Build

	docker build -t toolboc/notflix .

# Run

	docker run -p 3128:3128 -e USER=yourname -e PASSWORD=thepassword -d toolboc/notflix
