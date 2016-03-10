  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vminps %xmm3, %xmm3, %xmm13           #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovaps %ymm2, %ymm1                  #  2     0x4   4      OPC=vmovaps_ymm_ymm     
  vminps %ymm1, %ymm2, %ymm12           #  3     0x8   4      OPC=vminps_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                                  #  5     0x11  1      OPC=retq                
                                                                                      
.size target, .-target
