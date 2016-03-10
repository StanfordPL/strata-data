  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm2, %xmm14           #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklps %xmm10, %xmm11, %xmm12     #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhpd %xmm14, %xmm12, %xmm15     #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqu %xmm15, %xmm1                 #  5     0x14  5      OPC=movdqu_xmm_xmm         
  retq                                 #  6     0x19  1      OPC=retq                   
                                                                                        
.size target, .-target
