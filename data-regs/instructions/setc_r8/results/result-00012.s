  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x8, %r8                    #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rbx           #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_3_of_rbx  #  3     0xf   5      OPC=callq_label     
  retq                              #  4     0x14  1      OPC=retq            
                                                                              
.size target, .-target
