  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm2  #  1     0    4      OPC=movshdup_xmm_xmm  
  unpcklps %xmm1, %xmm2  #  2     0x4  3      OPC=unpcklps_xmm_xmm  
  movd %xmm2, %ebx       #  3     0x7  4      OPC=movd_r32_xmm      
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
