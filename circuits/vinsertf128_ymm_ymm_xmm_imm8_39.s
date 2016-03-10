  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovddup %ymm2, %ymm10                #  1     0     4      OPC=vmovddup_ymm_ymm    
  vmaxss %xmm3, %xmm3, %xmm11           #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm  
  vmaxss %xmm10, %xmm2, %xmm10          #  3     0x8   5      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xd   5      OPC=callq_label         
  vmovdqu %ymm2, %ymm1                  #  5     0x12  4      OPC=vmovdqu_ymm_ymm     
  retq                                  #  6     0x16  1      OPC=retq                
                                                                                      
.size target, .-target
