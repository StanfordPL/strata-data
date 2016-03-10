  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label         
  vmovss %xmm6, %xmm11, %xmm8                   #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  movss %xmm10, %xmm1                           #  4     0xe   5      OPC=movss_xmm_xmm       
  punpcklqdq %xmm8, %xmm1                       #  5     0x13  5      OPC=punpcklqdq_xmm_xmm  
  retq                                          #  6     0x18  1      OPC=retq                
                                                                                              
.size target, .-target
