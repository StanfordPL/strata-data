  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  rolb $0x1, %bl                      #  2     0xa   2      OPC=rolb_r8_one     
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0xc   5      OPC=callq_label     
  salb $0x1, %bl                      #  4     0x11  2      OPC=salb_r8_one     
  addb %r8b, %bl                      #  5     0x13  3      OPC=addb_r8_r8      
  cmovpq %rbx, %rbx                   #  6     0x16  4      OPC=cmovpq_r64_r64  
  retq                                #  7     0x1a  1      OPC=retq            
                                                                                
.size target, .-target
