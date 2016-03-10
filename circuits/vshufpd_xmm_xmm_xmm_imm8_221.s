  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovdqa %xmm10, %xmm14               #  2     0x5   5      OPC=vmovdqa_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label         
  vandpd %xmm14, %xmm10, %xmm1         #  4     0xf   5      OPC=vandpd_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1                 #  5     0x14  5      OPC=movdqu_xmm_xmm      
  unpcklpd %xmm3, %xmm1                #  6     0x19  4      OPC=unpcklpd_xmm_xmm    
  retq                                 #  7     0x1d  1      OPC=retq                
                                                                                     
.size target, .-target
