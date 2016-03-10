  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x0, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r10d_r11d  #  2     0xa   5      OPC=callq_label     
  decw %r10w                         #  3     0xf   4      OPC=decw_r16        
  callq .move_008_016_r10b_r11b_cx   #  4     0x13  5      OPC=callq_label     
  xorw %cx, %bx                      #  5     0x18  3      OPC=xorw_r16_r16    
  xorb %bl, %ah                      #  6     0x1b  2      OPC=xorb_rh_r8      
  retq                               #  7     0x1d  1      OPC=retq            
                                                                               
.size target, .-target
