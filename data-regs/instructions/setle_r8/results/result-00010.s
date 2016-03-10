  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x20, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  setng %bl                         #  2     0xa   3      OPC=setng_r8        
  callq .move_064_032_rbx_r8d_r9d   #  3     0xd   5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx  #  4     0x12  5      OPC=callq_label     
  salb $0x1, %r9b                   #  5     0x17  3      OPC=salb_r8_one     
  callq .move_r9b_to_byte_3_of_rbx  #  6     0x1a  5      OPC=callq_label     
  retq                              #  7     0x1f  1      OPC=retq            
                                                                              
.size target, .-target
