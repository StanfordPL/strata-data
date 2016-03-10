  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label             
  addw %r8w, %r8w                  #  2     0x5   4      OPC=addw_r16_r16            
  callq .move_064_128_r8_r9_xmm2   #  3     0x9   5      OPC=callq_label             
  vunpcklps %xmm2, %xmm2, %xmm11   #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm2, %xmm11, %xmm1  #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
