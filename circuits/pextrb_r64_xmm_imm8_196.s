  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x0, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  andb %bl, %bh                      #  2     0xa   2      OPC=andb_rh_r8      
  callq .move_byte_4_of_ymm1_to_r8b  #  3     0xc   5      OPC=callq_label     
  xaddb %bl, %r8b                    #  4     0x11  4      OPC=xaddb_r8_r8     
  retq                               #  5     0x15  1      OPC=retq            
                                                                               
.size target, .-target
