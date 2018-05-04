# dockerfio
FIO Testing in a docker container

To run read test:
docker run -it -v /path/to/test/dir:/data -e JOB_NAME='read' toasterlint/dockerfio

To run R(60%) / W(40%) test:
docker run -it -v /path/to/test/dir:/data -e JOB_NAME='rw' toasterlint/dockerfio

If fio complains about no direct filesystem access, try appending "-nodirect" to the JOB_NAME you are attempting to run.
