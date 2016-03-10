  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x40, %r9                    #  1     0     10     OPC=movq_r64_imm64  
  xchgl %ebx, %r9d                   #  2     0xa   3      OPC=xchgl_r32_r32   
  callq .move_r9b_to_byte_4_of_ymm1  #  3     0xd   5      OPC=callq_label     
  retq                               #  4     0x12  1      OPC=retq            
                                                                               
.size target, .-target
