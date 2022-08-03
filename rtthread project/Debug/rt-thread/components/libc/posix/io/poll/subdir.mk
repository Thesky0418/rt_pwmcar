################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/libc/posix/io/poll/poll.c \
../rt-thread/components/libc/posix/io/poll/select.c 

OBJS += \
./rt-thread/components/libc/posix/io/poll/poll.o \
./rt-thread/components/libc/posix/io/poll/select.o 

C_DEPS += \
./rt-thread/components/libc/posix/io/poll/poll.d \
./rt-thread/components/libc/posix/io/poll/select.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/libc/posix/io/poll/%.o: ../rt-thread/components/libc/posix/io/poll/%.c
	arm-none-eabi-gcc -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\applications" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\board" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\libraries\N32G45x_Firmware_Library\CMSIS\core" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\libraries\N32G45x_Firmware_Library\CMSIS\device" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\libraries\N32G45x_Firmware_Library\n32g45x_std_periph_driver\inc" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\libraries\n32_drivers" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\at_device-latest\class\esp8266" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\at_device-latest\inc" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\cJSON-latest" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\dht11-latest" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\onenet-latest\inc" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\dfs\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\drivers\sensors" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\drivers\spi" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\libc\compilers\common" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\at\at_socket" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\at\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\netdev\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\sal\impl" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\sal\include\socket" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\components\net\sal\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\include" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-ThreadStudio\summer_train\rt_pwmcar\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
