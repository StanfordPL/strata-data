  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label      
  addq %r11, %r9                    #  3     0xa   3      OPC=addq_r64_r64     
  addq %r10, %r8                    #  4     0xd   3      OPC=addq_r64_r64     
  callq .move_064_128_r8_r9_xmm3    #  5     0x10  5      OPC=callq_label      
  vmovapd %xmm3, %xmm1              #  6     0x15  4      OPC=vmovapd_xmm_xmm  
  retq                              #  7     0x19  1      OPC=retq             
                                                                               
.size target, .-target
