  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminss %xmm2, %xmm2, %xmm8          #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  vminsd %xmm3, %xmm3, %xmm9          #  2     0x4   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2  #  3     0x8   5      OPC=callq_label         
  vmovdqu %ymm2, %ymm1                #  4     0xd   4      OPC=vmovdqu_ymm_ymm     
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
