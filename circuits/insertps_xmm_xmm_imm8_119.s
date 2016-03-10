  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movsd %xmm10, %xmm1                             #  2     0x5   5      OPC=movsd_xmm_xmm     
  unpcklps %xmm2, %xmm1                           #  3     0xa   3      OPC=unpcklps_xmm_xmm  
  movhlps %xmm8, %xmm1                            #  4     0xd   4      OPC=movhlps_xmm_xmm   
  retq                                            #  5     0x11  1      OPC=retq              
                                                                                              
.size target, .-target
