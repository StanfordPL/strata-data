  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movapd %xmm1, %xmm14   #  1     0    5      OPC=movapd_xmm_xmm    
  movmskps %xmm14, %ebx  #  2     0x5  4      OPC=movmskps_r32_xmm  
  retq                   #  3     0x9  1      OPC=retq              
                                                                    
.size target, .-target