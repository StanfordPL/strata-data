  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vzeroall                   #  1     0     3      OPC=vzeroall              
  subss %xmm3, %xmm11        #  2     0x3   5      OPC=subss_xmm_xmm         
  divps %xmm10, %xmm11       #  3     0x8   4      OPC=divps_xmm_xmm         
  vpmovsxdq %xmm11, %ymm4    #  4     0xc   5      OPC=vpmovsxdq_ymm_xmm     
  vmovdqa %xmm4, %xmm1       #  5     0x11  4      OPC=vmovdqa_xmm_xmm       
  vmovshdup %ymm1, %ymm8     #  6     0x15  4      OPC=vmovshdup_ymm_ymm     
  vpbroadcastb %xmm8, %ymm1  #  7     0x19  5      OPC=vpbroadcastb_ymm_xmm  
  retq                       #  8     0x1e  1      OPC=retq                  
                                                                             
.size target, .-target
