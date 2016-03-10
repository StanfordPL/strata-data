  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm2, %xmm2, %xmm11                 #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  vunpcklpd %xmm4, %xmm2, %xmm0                 #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vunpcklpd %xmm0, %xmm11, %xmm10               #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1          #  5     0x11  5      OPC=callq_label            
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
