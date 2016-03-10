  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  xorq %rbx, %rbx                               #  2     0x5   3      OPC=xorq_r64_r64     
  movq %xmm7, %rbp                              #  3     0x8   5      OPC=movq_r64_xmm     
  rclb $0x1, %bl                                #  4     0xd   2      OPC=rclb_r8_one      
  cmovnbw %bp, %bx                              #  5     0xf   4      OPC=cmovnbw_r16_r16  
  retq                                          #  6     0x13  1      OPC=retq             
                                                                                           
.size target, .-target
