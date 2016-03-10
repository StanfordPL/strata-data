  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovdqa %ymm3, %ymm15             #  1     0    4      OPC=vmovdqa_ymm_ymm          
  vfmsub132pd %ymm1, %ymm15, %ymm2  #  2     0x4  5      OPC=vfmsub132pd_ymm_ymm_ymm  
  vminpd %ymm2, %ymm2, %ymm1        #  3     0x9  4      OPC=vminpd_ymm_ymm_ymm       
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
