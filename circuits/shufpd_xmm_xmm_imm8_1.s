  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm9  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vbroadcastsd %xmm9, %ymm3  #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm  
  unpckhpd %xmm3, %xmm1      #  3     0xa  4      OPC=unpckhpd_xmm_xmm      
  retq                       #  4     0xe  1      OPC=retq                  
                                                                            
.size target, .-target
