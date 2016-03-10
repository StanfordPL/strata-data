  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm12  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  unpckhpd %xmm12, %xmm1      #  2     0x5  5      OPC=unpckhpd_xmm_xmm      
  retq                        #  3     0xa  1      OPC=retq                  
                                                                             
.size target, .-target
