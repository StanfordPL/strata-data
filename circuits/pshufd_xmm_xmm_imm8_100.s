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
  vunpcklps %xmm9, %xmm10, %xmm11                 #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1                          #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
