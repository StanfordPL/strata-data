  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movdqu %xmm3, %xmm2         #  1     0    4      OPC=movdqu_xmm_xmm      
  vmaxps %ymm2, %ymm2, %ymm1  #  2     0x4  4      OPC=vmaxps_ymm_ymm_ymm  
  movups %xmm1, %xmm1         #  3     0x8  3      OPC=movups_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
