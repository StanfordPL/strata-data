  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm5  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vmovupd %ymm5, %ymm6       #  2     0x5  4      OPC=vmovupd_ymm_ymm       
  punpckhqdq %xmm6, %xmm1    #  3     0x9  4      OPC=punpckhqdq_xmm_xmm    
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
