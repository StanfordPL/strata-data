  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x40, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  xorb %bh, %bh                      #  2     0xa   2      OPC=xorb_rh_rh      
  callq .move_byte_4_of_ymm1_to_r9b  #  3     0xc   5      OPC=callq_label     
  movzbl %r9b, %r15d                 #  4     0x11  4      OPC=movzbl_r32_r8   
  xaddb %bl, %r15b                   #  5     0x15  4      OPC=xaddb_r8_r8     
  retq                               #  6     0x19  1      OPC=retq            
                                                                               
.size target, .-target
