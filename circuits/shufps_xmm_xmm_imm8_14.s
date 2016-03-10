  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm15  #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  unpckhpd %xmm15, %xmm1      #  2     0x5  5      OPC=unpckhpd_xmm_xmm      
  retq                        #  3     0xa  1      OPC=retq                  
                                                                             
.size target, .-target
