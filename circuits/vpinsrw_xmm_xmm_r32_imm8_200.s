  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label      
  popcntq %r13, %r10                #  2     0x5   5      OPC=popcntq_r64_r64  
  decb %r12b                        #  3     0xa   3      OPC=decb_r8          
  cmovnbw %bx, %r12w                #  4     0xd   5      OPC=cmovnbw_r16_r16  
  vzeroall                          #  5     0x12  3      OPC=vzeroall         
  callq .move_064_128_r12_r13_xmm1  #  6     0x15  5      OPC=callq_label      
  retq                              #  7     0x1a  1      OPC=retq             
                                                                               
.size target, .-target
