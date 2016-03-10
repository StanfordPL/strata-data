  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode           
.target:                                          #        0     0      OPC=<label>      
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label  
  callq .move_64_128_xmm8_xmm9_xmm1               #  2     0x5   5      OPC=callq_label  
  xorb %r8b, %r8b                                 #  3     0xa   3      OPC=xorb_r8_r8   
  callq .move_r8b_to_byte_7_of_ymm1               #  4     0xd   5      OPC=callq_label  
  retq                                            #  5     0x12  1      OPC=retq         
                                                                                         
.size target, .-target
