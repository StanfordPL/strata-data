  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x40, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_11_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  subl %ebx, %ebx                     #  3     0xf   2      OPC=subl_r32_r32    
  xaddb %r8b, %bl                     #  4     0x11  4      OPC=xaddb_r8_r8     
  retq                                #  5     0x15  1      OPC=retq            
                                                                                
.size target, .-target
