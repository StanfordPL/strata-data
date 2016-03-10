  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovaps %xmm3, %xmm1          #  1     0    4      OPC=vmovaps_xmm_xmm       
  vmovlhps %xmm1, %xmm2, %xmm4  #  2     0x4  4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovups %ymm4, %ymm1          #  3     0x8  4      OPC=vmovups_ymm_ymm       
  retq                          #  4     0xc  1      OPC=retq                  
                                                                               
.size target, .-target
