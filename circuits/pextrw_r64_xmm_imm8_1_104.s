  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vpbroadcastw %xmm1, %ymm2         #  1     0     5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label           
  sarb $0x1, %r13b                  #  3     0xa   3      OPC=sarb_r8_one           
  callq .read_of_into_rbx           #  4     0xd   5      OPC=callq_label           
  xaddw %r12w, %bx                  #  5     0x12  5      OPC=xaddw_r16_r16         
  retq                              #  6     0x17  1      OPC=retq                  
                                                                                    
.size target, .-target
