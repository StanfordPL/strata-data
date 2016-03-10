  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  pmovzxwq %xmm1, %xmm14         #  1     0     6      OPC=pmovzxwq_xmm_xmm      
  vmovshdup %xmm1, %xmm3         #  2     0x6   4      OPC=vmovshdup_xmm_xmm     
  vmovhlps %xmm3, %xmm14, %xmm2  #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm2, %ebx               #  4     0xe   4      OPC=movd_r32_xmm          
  retq                           #  5     0x12  1      OPC=retq                  
                                                                                 
.size target, .-target
