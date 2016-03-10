  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm2, %xmm10, %xmm2                  #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm8, %xmm10                             #  3     0x9   5      OPC=movsd_xmm_xmm          
  callq .move_64_128_xmm10_xmm11_xmm1             #  4     0xe   5      OPC=callq_label            
  unpcklpd %xmm2, %xmm1                           #  5     0x13  4      OPC=unpcklpd_xmm_xmm       
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
