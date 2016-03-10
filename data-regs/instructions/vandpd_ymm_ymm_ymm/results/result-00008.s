  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movups %xmm2, %xmm11        #  1     0    4      OPC=movups_xmm_xmm      
  por %xmm11, %xmm2           #  2     0x4  5      OPC=por_xmm_xmm         
  vandps %ymm3, %ymm2, %ymm1  #  3     0x9  4      OPC=vandps_ymm_ymm_ymm  
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
