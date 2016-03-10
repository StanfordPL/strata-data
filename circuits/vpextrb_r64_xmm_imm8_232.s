  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11    #  1     0     5      OPC=callq_label    
  callq .move_byte_11_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label    
  movzbq %r8b, %rbx                   #  3     0xa   4      OPC=movzbq_r64_r8  
  xchgb %bl, %r11b                    #  4     0xe   3      OPC=xchgb_r8_r8    
  retq                                #  5     0x11  1      OPC=retq           
                                                                               
.size target, .-target
