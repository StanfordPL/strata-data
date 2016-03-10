  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  movq $0x20, %r8                     #  2     0x5   10     OPC=movq_r64_imm64  
  negq %r8                            #  3     0xf   3      OPC=negq_r64        
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label     
  callq .read_cf_into_rbx             #  5     0x17  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  6     0x1c  5      OPC=callq_label     
  retq                                #  7     0x21  1      OPC=retq            
                                                                                
.size target, .-target
