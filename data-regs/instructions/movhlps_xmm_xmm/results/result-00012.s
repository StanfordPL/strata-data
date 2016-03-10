  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm1, %xmm9  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovapd %ymm9, %ymm7          #  2     0x4  5      OPC=vmovapd_ymm_ymm       
  movaps %xmm7, %xmm1           #  3     0x9  3      OPC=movaps_xmm_xmm        
  retq                          #  4     0xc  1      OPC=retq                  
                                                                               
.size target, .-target
