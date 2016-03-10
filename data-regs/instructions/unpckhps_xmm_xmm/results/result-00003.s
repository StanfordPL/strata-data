  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  unpckhpd %xmm2, %xmm1                           #  1     0     4      OPC=unpckhpd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  vmovddup %xmm9, %xmm10                          #  3     0x9   5      OPC=vmovddup_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9               #  4     0xe   5      OPC=callq_label       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label       
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target
