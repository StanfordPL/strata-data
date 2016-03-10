  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm1                          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm11, %xmm2, %xmm13                 #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm13, %xmm1                             #  4     0xe   5      OPC=movsd_xmm_xmm          
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
