  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movss %xmm7, %xmm1                            #  2     0x5   4      OPC=movss_xmm_xmm    
  callq .move_128_064_xmm1_r8_r9                #  3     0x9   5      OPC=callq_label      
  xorq %rbx, %rbx                               #  4     0xe   3      OPC=xorq_r64_r64     
  cmovngq %r8, %r9                              #  5     0x11  4      OPC=cmovngq_r64_r64  
  callq .move_byte_12_of_ymm1_to_r9b            #  6     0x15  5      OPC=callq_label      
  xchgw %bx, %r9w                               #  7     0x1a  4      OPC=xchgw_r16_r16    
  retq                                          #  8     0x1e  1      OPC=retq             
                                                                                           
.size target, .-target
