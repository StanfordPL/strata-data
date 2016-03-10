  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovups %xmm2, %xmm1         #  1     0    4      OPC=vmovups_xmm_xmm     
  vmovapd %xmm3, %xmm11        #  2     0x4  4      OPC=vmovapd_xmm_xmm     
  vaddps %ymm11, %ymm1, %ymm1  #  3     0x8  5      OPC=vaddps_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
