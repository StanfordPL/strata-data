  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movupd %xmm2, %xmm1                             #  2     0x5   4      OPC=movupd_xmm_xmm          
  vpunpckldq %xmm10, %xmm9, %xmm3                 #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklps %xmm3, %xmm1                           #  4     0xe   3      OPC=unpcklps_xmm_xmm        
  retq                                            #  5     0x11  1      OPC=retq                    
                                                                                                    
.size target, .-target
