  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovsxdq %xmm2, %ymm4          #  1     0     5      OPC=vpmovsxdq_ymm_xmm      
  cvtps2dq %xmm4, %xmm9           #  2     0x5   5      OPC=cvtps2dq_xmm_xmm       
  callq .move_128_064_xmm2_r8_r9  #  3     0xa   5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  4     0xf   5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm1, %xmm5   #  5     0x14  5      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklpd %xmm3, %xmm5, %xmm1   #  6     0x19  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  7     0x1d  1      OPC=retq                   
                                                                                   
.size target, .-target
