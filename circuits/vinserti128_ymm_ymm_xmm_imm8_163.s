  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxss %xmm3, %xmm3, %xmm11           #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm10                 #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm2  #  3     0x8   5      OPC=callq_label         
  vmovaps %ymm2, %ymm1                  #  4     0xd   4      OPC=vmovaps_ymm_ymm     
  retq                                  #  5     0x11  1      OPC=retq                
                                                                                      
.size target, .-target
