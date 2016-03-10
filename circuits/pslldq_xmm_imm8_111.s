  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vhaddps %xmm1, %xmm1, %xmm9      #  1     0     4      OPC=vhaddps_xmm_xmm_xmm    
  vxorpd %xmm9, %xmm9, %xmm13      #  2     0x4   5      OPC=vxorpd_xmm_xmm_xmm     
  vunpcklps %ymm13, %ymm13, %ymm4  #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm  
  movdqa %xmm4, %xmm1              #  4     0xe   4      OPC=movdqa_xmm_xmm         
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
