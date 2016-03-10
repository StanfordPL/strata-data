  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_6_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx  #  3     0xf   5      OPC=callq_label     
  rolq $0x1, %rbx                   #  4     0x14  3      OPC=rolq_r64_one    
  xaddb %bh, %cl                    #  5     0x17  3      OPC=xaddb_r8_rh     
  movzbw %bh, %bx                   #  6     0x1a  4      OPC=movzbw_r16_rh   
  retq                              #  7     0x1e  1      OPC=retq            
                                                                              
.size target, .-target
