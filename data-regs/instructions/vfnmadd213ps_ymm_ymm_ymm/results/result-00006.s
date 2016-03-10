  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vminpd %ymm3, %ymm3, %ymm7        #  1     0    4      OPC=vminpd_ymm_ymm_ymm        
  vfnmadd231ps %ymm1, %ymm2, %ymm7  #  2     0x4  5      OPC=vfnmadd231ps_ymm_ymm_ymm  
  vmovdqa %ymm7, %ymm1              #  3     0x9  4      OPC=vmovdqa_ymm_ymm           
  retq                              #  4     0xd  1      OPC=retq                      
                                                                                       
.size target, .-target
