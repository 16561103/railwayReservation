cc=g++
CFLAGS = -g -Wall -Wextra

INCLUDES = -I ./

reservation:main.o login.o user.o admin.o train.o booking.o
	${cc} ${CFLAGS} main.o login.o user.o admin.o train.o booking.o

main.o:main.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c main.cpp
	
login.o:login.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c login.cpp
	
user.o:user.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c user.cpp
	
admin.o:admin.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c admin.cpp
	
train.o:train.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c train.cpp
	
booking.o:booking.cpp
	${cc} ${CFLAGS} ${INCLUDES} -c booking.cpp		
	
clean:
	echo "Cleaning...>"
	rm *.o reservation
				

			
