  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovdqa %ymm2, %ymm1         #  1     0    4      OPC=vmovdqa_ymm_ymm     
  vmovupd %xmm1, %xmm11        #  2     0x4  4      OPC=vmovupd_xmm_xmm     
  vxorps %ymm2, %ymm11, %ymm1  #  3     0x8  4      OPC=vxorps_ymm_ymm_ymm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
