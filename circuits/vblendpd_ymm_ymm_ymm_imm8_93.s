  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovaps %ymm3, %ymm1           #  1     0    4      OPC=vmovaps_ymm_ymm        
  vunpckhpd %ymm1, %ymm2, %ymm8  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  punpcklqdq %xmm8, %xmm1        #  3     0x8  5      OPC=punpcklqdq_xmm_xmm     
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
