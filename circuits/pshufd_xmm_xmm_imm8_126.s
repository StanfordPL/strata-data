  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm10_xmm11             #  1     0     5      OPC=callq_label       
  movdqu %xmm11, %xmm1                            #  2     0x5   5      OPC=movdqu_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label       
  movss %xmm11, %xmm2                             #  4     0xf   5      OPC=movss_xmm_xmm     
  unpcklps %xmm2, %xmm1                           #  5     0x14  3      OPC=unpcklps_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq              
                                                                                              
.size target, .-target
