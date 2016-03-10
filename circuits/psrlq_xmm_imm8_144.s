  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  xorpd %xmm10, %xmm10         #  1     0    5      OPC=xorpd_xmm_xmm         
  vpbroadcastq %xmm10, %ymm13  #  2     0x5  5      OPC=vpbroadcastq_ymm_xmm  
  movdqu %xmm13, %xmm1         #  3     0xa  5      OPC=movdqu_xmm_xmm        
  retq                         #  4     0xf  1      OPC=retq                  
                                                                              
.size target, .-target
