  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  movapd %xmm2, %xmm0                           #  1     0     4      OPC=movapd_xmm_xmm    
  unpcklps %xmm3, %xmm0                         #  2     0x4   3      OPC=unpcklps_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x7   5      OPC=callq_label       
  vpor %xmm0, %xmm4, %xmm1                      #  4     0xc   4      OPC=vpor_xmm_xmm_xmm  
  retq                                          #  5     0x10  1      OPC=retq              
                                                                                            
.size target, .-target
