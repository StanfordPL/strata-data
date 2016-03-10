  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vmovq %xmm1, %xmm11            #  1     0    4      OPC=vmovq_xmm_xmm        
  vandnps %ymm11, %ymm11, %ymm5  #  2     0x4  5      OPC=vandnps_ymm_ymm_ymm  
  movddup %xmm5, %xmm1           #  3     0x9  4      OPC=movddup_xmm_xmm      
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
