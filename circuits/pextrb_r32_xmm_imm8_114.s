  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_2_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  negb %bl                           #  3     0xf   2      OPC=negb_r8         
  movzbl %r9b, %ecx                  #  4     0x11  4      OPC=movzbl_r32_r8   
  addb %cl, %bl                      #  5     0x15  2      OPC=addb_r8_r8      
  retq                               #  6     0x17  1      OPC=retq            
                                                                               
.size target, .-target
