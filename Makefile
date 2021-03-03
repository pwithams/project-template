make:
	docker build -t my_ds_image .
	docker run --rm -it my_ds_image notebook
