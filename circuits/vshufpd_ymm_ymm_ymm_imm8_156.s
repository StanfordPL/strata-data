  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  unpcklpd %xmm3, %xmm2             #  1     0     4      OPC=unpcklpd_xmm_xmm       
  vunpckhpd %ymm3, %ymm2, %ymm1     #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r12_r13  #  3     0x8   5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm1  #  4     0xd   5      OPC=callq_label            
  retq                              #  5     0x12  1      OPC=retq                   
                                                                                     
.size target, .-target
