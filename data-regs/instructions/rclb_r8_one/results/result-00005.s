  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movb %bl, %bh                    #  1     0     2      OPC=movb_rh_r8      
  movzwl %bx, %edx                 #  2     0x2   3      OPC=movzwl_r32_r16  
  adcb %bl, %bl                    #  3     0x5   2      OPC=adcb_r8_r8      
  callq .move_032_016_edx_r8w_r9w  #  4     0x7   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_dx   #  5     0xc   5      OPC=callq_label     
  shlb $0x1, %dl                   #  6     0x11  2      OPC=shlb_r8_one     
  retq                             #  7     0x13  1      OPC=retq            
                                                                             
.size target, .-target
