  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovss %xmm2, %xmm1, %xmm8           #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm  
  vmovupd %xmm13, %xmm9                #  3     0x9   5      OPC=vmovupd_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1    #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
