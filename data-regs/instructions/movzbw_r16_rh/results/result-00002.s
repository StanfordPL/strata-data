  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x8, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_5_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_3_of_rbx  #  3     0xf   5      OPC=callq_label     
  movb %ah, %bl                     #  4     0x14  2      OPC=movb_r8_rh      
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
