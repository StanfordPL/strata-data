  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_4_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  andl %ebx, %ebx                    #  3     0xf   2      OPC=andl_r32_r32    
  xaddb %r8b, %bl                    #  4     0x11  4      OPC=xaddb_r8_r8     
  retq                               #  5     0x15  1      OPC=retq            
                                                                               
.size target, .-target
