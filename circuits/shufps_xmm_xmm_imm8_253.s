  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movshdup %xmm2, %xmm3                           #  1     0     4      OPC=movshdup_xmm_xmm       
  callq .move_128_64_xmm3_xmm12_xmm13             #  2     0x4   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  vunpcklps %xmm11, %xmm9, %xmm2                  #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovq %xmm2, %xmm12                             #  5     0x13  4      OPC=vmovq_xmm_xmm          
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
