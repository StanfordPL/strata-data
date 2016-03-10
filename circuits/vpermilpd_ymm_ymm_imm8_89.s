  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovups %ymm2, %ymm1           #  1     0    4      OPC=vmovups_ymm_ymm        
  vunpcklpd %ymm2, %ymm2, %ymm9  #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm  
  punpckhqdq %xmm9, %xmm1        #  3     0x8  5      OPC=punpckhqdq_xmm_xmm     
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
