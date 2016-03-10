  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  unpcklps %xmm8, %xmm11                          #  2     0x5   4      OPC=unpcklps_xmm_xmm  
  movshdup %xmm2, %xmm1                           #  3     0x9   4      OPC=movshdup_xmm_xmm  
  movsd %xmm11, %xmm1                             #  4     0xd   5      OPC=movsd_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq              
                                                                                              
.size target, .-target
