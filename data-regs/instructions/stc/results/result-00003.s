  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  xorl %ecx, %ecx                    #  1     0     2      OPC=xorl_r32_r32  
  callq .read_pf_into_rbx            #  2     0x2   5      OPC=callq_label   
  callq .move_032_016_ebx_r10w_r11w  #  3     0x7   5      OPC=callq_label   
  callq .move_008_016_r10b_r11b_bx   #  4     0xc   5      OPC=callq_label   
  notw %bx                           #  5     0x11  3      OPC=notw_r16      
  rolb $0x1, %bl                     #  6     0x14  2      OPC=rolb_r8_one   
  retq                               #  7     0x16  1      OPC=retq          
                                                                             
.size target, .-target
