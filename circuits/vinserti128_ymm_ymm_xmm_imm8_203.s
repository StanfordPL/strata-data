  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovhlps %xmm3, %xmm3, %xmm1          #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm1, %xmm11           #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm    
  vmaxps %ymm2, %ymm2, %ymm10           #  3     0x8   4      OPC=vmaxps_ymm_ymm_ymm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xc   5      OPC=callq_label           
  retq                                  #  5     0x11  1      OPC=retq                  
                                                                                        
.size target, .-target
