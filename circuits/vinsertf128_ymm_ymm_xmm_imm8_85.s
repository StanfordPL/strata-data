  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmaxpd %xmm3, %xmm3, %xmm11         #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm  
  vmovdqa %ymm11, %ymm9               #  2     0x4   5      OPC=vmovdqa_ymm_ymm     
  vmovaps %ymm2, %ymm8                #  3     0x9   4      OPC=vmovaps_ymm_ymm     
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
