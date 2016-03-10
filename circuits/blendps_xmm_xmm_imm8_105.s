  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  movss %xmm8, %xmm1                   #  2     0x5   5      OPC=movss_xmm_xmm       
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label         
  vmovsd %xmm13, %xmm9, %xmm0          #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm  
  vmovss %xmm0, %xmm9, %xmm13          #  5     0x14  4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                 #  7     0x1d  1      OPC=retq                
                                                                                     
.size target, .-target
