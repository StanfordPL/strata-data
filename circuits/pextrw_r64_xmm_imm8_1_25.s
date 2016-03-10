  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm2     #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  vorpd %ymm2, %ymm2, %ymm3  #  2     0x5   4      OPC=vorpd_ymm_ymm_ymm  
  movhlps %xmm2, %xmm3       #  3     0x9   3      OPC=movhlps_xmm_xmm    
  vmovd %xmm3, %ebx          #  4     0xc   4      OPC=vmovd_r32_xmm      
  retq                       #  5     0x10  1      OPC=retq               
                                                                          
.size target, .-target
