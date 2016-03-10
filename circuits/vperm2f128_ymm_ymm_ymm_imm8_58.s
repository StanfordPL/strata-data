  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vmovups %ymm3, %ymm1          #  1     0    4      OPC=vmovups_ymm_ymm      
  vandnps %ymm1, %ymm1, %ymm14  #  2     0x4  4      OPC=vandnps_ymm_ymm_ymm  
  pmovzxwq %xmm14, %xmm1        #  3     0x8  6      OPC=pmovzxwq_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
