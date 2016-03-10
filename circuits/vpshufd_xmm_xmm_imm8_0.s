  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label           
  rolb $0x1, %r13b                  #  2     0x5   3      OPC=rolb_r8_one           
  callq .move_064_128_r12_r13_xmm2  #  3     0x8   5      OPC=callq_label           
  vpbroadcastd %xmm2, %xmm1         #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq                  
                                                                                    
.size target, .-target
