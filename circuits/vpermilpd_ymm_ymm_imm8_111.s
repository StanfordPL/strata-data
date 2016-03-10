  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vhaddps %xmm2, %xmm2, %xmm8      #  1     0    4      OPC=vhaddps_xmm_xmm_xmm      
  addsd %xmm8, %xmm2               #  2     0x4  5      OPC=addsd_xmm_xmm            
  vpunpckhqdq %ymm2, %ymm2, %ymm1  #  3     0x9  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
