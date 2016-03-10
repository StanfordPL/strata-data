  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x80, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d   #  2     0xa   5      OPC=callq_label     
  movb %ah, %bl                     #  3     0xf   2      OPC=movb_r8_rh      
  callq .move_r8b_to_byte_3_of_rbx  #  4     0x11  5      OPC=callq_label     
  callq .move_016_008_bx_r8b_r9b    #  5     0x16  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx    #  6     0x1b  5      OPC=callq_label     
  retq                              #  7     0x20  1      OPC=retq            
                                                                              
.size target, .-target
