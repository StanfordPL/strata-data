  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovapd %ymm2, %ymm1        #  1     0    4      OPC=vmovapd_ymm_ymm     
  vpandn %ymm1, %ymm1, %ymm7  #  2     0x4  4      OPC=vpandn_ymm_ymm_ymm  
  pmovsxwq %xmm7, %xmm1       #  3     0x8  5      OPC=pmovsxwq_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
