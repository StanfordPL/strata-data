  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11             #  1     0     5      OPC=callq_label         
  movss %xmm11, %xmm2                             #  2     0x5   5      OPC=movss_xmm_xmm       
  vmovsldup %xmm2, %xmm3                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  punpcklqdq %xmm3, %xmm1                         #  5     0x13  4      OPC=punpcklqdq_xmm_xmm  
  movss %xmm10, %xmm1                             #  6     0x17  5      OPC=movss_xmm_xmm       
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
