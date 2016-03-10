  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  vmovdqa %ymm2, %ymm1   #  1     0     4      OPC=vmovdqa_ymm_ymm   
  movups %xmm3, %xmm6    #  2     0x4   3      OPC=movups_xmm_xmm    
  movsldup %xmm6, %xmm1  #  3     0x7   4      OPC=movsldup_xmm_xmm  
  unpckhps %xmm2, %xmm1  #  4     0xb   3      OPC=unpckhps_xmm_xmm  
  movsd %xmm3, %xmm1     #  5     0xe   4      OPC=movsd_xmm_xmm     
  retq                   #  6     0x12  1      OPC=retq              
                                                                     
.size target, .-target
