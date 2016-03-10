  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x0, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  setnp %bl                          #  2     0xa   3      OPC=setnp_r8        
  callq .move_064_032_rbx_r10d_r11d  #  3     0xd   5      OPC=callq_label     
  rolb $0x1, %r11b                   #  4     0x12  3      OPC=rolb_r8_one     
  callq .move_008_016_r10b_r11b_bx   #  5     0x15  5      OPC=callq_label     
  retq                               #  6     0x1a  1      OPC=retq            
                                                                               
.size target, .-target
