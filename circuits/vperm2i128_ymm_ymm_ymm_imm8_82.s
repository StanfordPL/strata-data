  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  minps %xmm3, %xmm2                #  1     0     3      OPC=minps_xmm_xmm    
  movdqu %xmm3, %xmm3               #  2     0x3   4      OPC=movdqu_xmm_xmm   
  callq .move_128_064_xmm3_r12_r13  #  3     0x7   5      OPC=callq_label      
  vmovdqu %ymm2, %ymm1              #  4     0xc   4      OPC=vmovdqu_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label      
  retq                              #  6     0x15  1      OPC=retq             
                                                                               
.size target, .-target
