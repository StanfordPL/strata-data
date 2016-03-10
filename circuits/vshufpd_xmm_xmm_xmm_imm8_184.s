  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vpbroadcastq %xmm2, %xmm13      #  1     0    5      OPC=vpbroadcastq_xmm_xmm   
  vunpcklpd %xmm3, %xmm13, %xmm1  #  2     0x5  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  3     0x9  1      OPC=retq                   
                                                                                  
.size target, .-target
