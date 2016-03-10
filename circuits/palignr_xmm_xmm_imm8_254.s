  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmaxpd %xmm11, %xmm11, %xmm4         #  2     0x5   5      OPC=vmaxpd_xmm_xmm_xmm  
  vpandn %xmm11, %xmm4, %xmm10         #  3     0xa   5      OPC=vpandn_xmm_xmm_xmm  
  sqrtpd %xmm10, %xmm11                #  4     0xf   5      OPC=sqrtpd_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label         
  retq                                 #  6     0x19  1      OPC=retq                
                                                                                     
.size target, .-target
