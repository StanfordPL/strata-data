  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  vorps %xmm1, %xmm1, %xmm3   #  1     0     4      OPC=vorps_xmm_xmm_xmm  
  vorpd %xmm1, %xmm1, %xmm13  #  2     0x4   4      OPC=vorpd_xmm_xmm_xmm  
  vorps %ymm3, %ymm13, %ymm9  #  3     0x8   4      OPC=vorps_ymm_ymm_ymm  
  vorps %xmm13, %xmm9, %xmm0  #  4     0xc   5      OPC=vorps_xmm_xmm_xmm  
  vmovd %xmm0, %ebx           #  5     0x11  4      OPC=vmovd_r32_xmm      
  retq                        #  6     0x15  1      OPC=retq               
                                                                           
.size target, .-target
