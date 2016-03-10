  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movsldup %xmm2, %xmm2                           #  2     0x5   4      OPC=movsldup_xmm_xmm  
  unpcklps %xmm9, %xmm11                          #  3     0x9   4      OPC=unpcklps_xmm_xmm  
  unpcklpd %xmm2, %xmm11                          #  4     0xd   5      OPC=unpcklpd_xmm_xmm  
  vmovdqa %xmm11, %xmm1                           #  5     0x12  5      OPC=vmovdqa_xmm_xmm   
  retq                                            #  6     0x17  1      OPC=retq              
                                                                                              
.size target, .-target
