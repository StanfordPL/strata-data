  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  movsldup %xmm1, %xmm1        #  1     0     4      OPC=movsldup_xmm_xmm      
  unpcklps %xmm2, %xmm1        #  2     0x4   3      OPC=unpcklps_xmm_xmm      
  vmovdqa %xmm1, %xmm15        #  3     0x7   4      OPC=vmovdqa_xmm_xmm       
  vbroadcastsd %xmm15, %ymm10  #  4     0xb   5      OPC=vbroadcastsd_ymm_xmm  
  unpckhps %xmm10, %xmm1       #  5     0x10  4      OPC=unpckhps_xmm_xmm      
  retq                         #  6     0x14  1      OPC=retq                  
                                                                               
.size target, .-target
