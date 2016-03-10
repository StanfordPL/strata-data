  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm14                  #  1     0     4      OPC=vmovd_xmm_r32            
  vpunpcklqdq %ymm14, %ymm14, %ymm13  #  2     0x4   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpcklps %xmm13, %xmm1, %xmm11     #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm    
  movsd %xmm11, %xmm1                 #  4     0xe   5      OPC=movsd_xmm_xmm            
  retq                                #  5     0x13  1      OPC=retq                     
                                                                                         
.size target, .-target
