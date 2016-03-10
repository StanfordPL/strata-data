  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_7_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  movzbw %ah, %di                   #  3     0xf   4      OPC=movzbw_r16_rh   
  movsbl %dil, %ebx                 #  4     0x13  4      OPC=movsbl_r32_r8   
  callq .move_r8b_to_byte_5_of_rbx  #  5     0x17  5      OPC=callq_label     
  retq                              #  6     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
