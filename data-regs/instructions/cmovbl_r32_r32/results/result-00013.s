  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  cmovnael %ecx, %ebx               #  1     0     3      OPC=cmovnael_r32_r32  
  movq $0x7, %r9                    #  2     0x3   10     OPC=movq_r64_imm64    
  callq .move_byte_6_of_rbx_to_r9b  #  3     0xd   5      OPC=callq_label       
  movswq %r9w, %rdx                 #  4     0x12  4      OPC=movswq_r64_r16    
  callq .move_byte_5_of_rbx_to_r8b  #  5     0x16  5      OPC=callq_label       
  xaddb %dh, %bl                    #  6     0x1b  3      OPC=xaddb_r8_rh       
  callq .move_r8b_to_byte_7_of_rbx  #  7     0x1e  5      OPC=callq_label       
  retq                              #  8     0x23  1      OPC=retq              
                                                                                
.size target, .-target
