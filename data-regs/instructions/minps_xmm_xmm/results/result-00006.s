  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminps %xmm2, %xmm1, %xmm0   #  1     0    4      OPC=vminps_xmm_xmm_xmm  
  vminps %xmm2, %xmm0, %xmm10  #  2     0x4  4      OPC=vminps_xmm_xmm_xmm  
  movdqa %xmm10, %xmm1         #  3     0x8  5      OPC=movdqa_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
