  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm1  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  vorps %ymm1, %ymm1, %ymm12    #  2     0x4  4      OPC=vorps_ymm_ymm_ymm     
  movd %xmm12, %eax             #  3     0x8  5      OPC=movd_r32_xmm          
  movl %eax, %ebx               #  4     0xd  2      OPC=movl_r32_r32          
  retq                          #  5     0xf  1      OPC=retq                  
                                                                               
.size target, .-target
