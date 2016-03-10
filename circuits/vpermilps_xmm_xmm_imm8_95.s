  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm7, %ymm1                     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vpbroadcastd %xmm5, %xmm8                     #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklpd %xmm8, %xmm1, %xmm1                 #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  5     0x14  1      OPC=retq                   
                                                                                                 
.size target, .-target
