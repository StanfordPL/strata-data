  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovapd %xmm10, %xmm11               #  2     0x5   5      OPC=vmovapd_xmm_xmm     
  vmovss %xmm11, %xmm2, %xmm4          #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm  
  vmovdqa %xmm4, %xmm1                 #  4     0xf   4      OPC=vmovdqa_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
