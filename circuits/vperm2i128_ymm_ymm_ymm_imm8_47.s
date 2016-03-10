  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqa %xmm3, %xmm10                 #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vmovdqa %xmm10, %xmm11                #  2     0x4   5      OPC=vmovdqa_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm2  #  3     0x9   5      OPC=callq_label         
  vxorps %ymm2, %ymm11, %ymm1           #  4     0xe   4      OPC=vxorps_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
