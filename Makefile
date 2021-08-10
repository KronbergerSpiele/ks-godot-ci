build:
	docker build -t kronbergerspiele/ks-godot-ci:latest .

publish:
	docker push kronbergerspiele/ks-godot-ci
