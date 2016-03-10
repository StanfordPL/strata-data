  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x5, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r10w_r11w  #  2     0xa   5      OPC=callq_label     
  callq .move_008_016_r10b_r11b_dx   #  3     0xf   5      OPC=callq_label     
  callq .move_016_008_dx_r8b_r9b     #  4     0x14  5      OPC=callq_label     
  callq .move_r8b_to_byte_5_of_rbx   #  5     0x19  5      OPC=callq_label     
  movb %ah, %bl                      #  6     0x1e  2      OPC=movb_r8_rh      
  retq                               #  7     0x20  1      OPC=retq            
                                                                               
.size target, .-target
