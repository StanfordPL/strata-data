  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmaxss %xmm2, %xmm2, %xmm3        #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  vsqrtps %ymm3, %ymm2              #  2     0x4   4      OPC=vsqrtps_ymm_ymm     
  callq .move_128_064_xmm2_r12_r13  #  3     0x8   5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
