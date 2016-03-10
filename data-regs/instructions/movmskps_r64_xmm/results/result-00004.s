  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminsd %xmm1, %xmm1, %xmm10  #  1     0    4      OPC=vminsd_xmm_xmm_xmm  
  vmovmskps %xmm10, %ebx       #  2     0x4  5      OPC=vmovmskps_r32_xmm   
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
