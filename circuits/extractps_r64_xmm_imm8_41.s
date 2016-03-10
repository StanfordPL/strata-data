  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovdqu %xmm1, %xmm7     #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vmovshdup %xmm7, %xmm15  #  2     0x4  4      OPC=vmovshdup_xmm_xmm  
  movd %xmm15, %ebx        #  3     0x8  5      OPC=movd_r32_xmm       
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
