  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vmovapd %ymm2, %ymm1       #  1     0    4      OPC=vmovapd_ymm_ymm       
  vpbroadcastq %xmm2, %ymm3  #  2     0x4  5      OPC=vpbroadcastq_ymm_xmm  
  unpckhpd %xmm3, %xmm1      #  3     0x9  4      OPC=unpckhpd_xmm_xmm      
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
