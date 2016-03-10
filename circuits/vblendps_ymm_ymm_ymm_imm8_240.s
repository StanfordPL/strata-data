  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vaddss %xmm3, %xmm3, %xmm1        #  1     0     4      OPC=vaddss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label         
  vpsubd %ymm1, %ymm3, %ymm1        #  3     0x9   4      OPC=vpsubd_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
