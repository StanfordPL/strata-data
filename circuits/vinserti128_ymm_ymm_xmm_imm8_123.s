  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminss %xmm3, %xmm3, %xmm9          #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  vmovdqu %ymm2, %ymm5                #  2     0x4   4      OPC=vmovdqu_ymm_ymm     
  vmaxsd %xmm5, %xmm2, %xmm8          #  3     0x8   4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
