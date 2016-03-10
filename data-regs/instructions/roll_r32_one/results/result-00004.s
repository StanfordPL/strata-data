  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r10w_r11w  #  1     0     5      OPC=callq_label     
  rolb $0x1, %r11b                   #  2     0x5   3      OPC=rolb_r8_one     
  movswl %r11w, %esi                 #  3     0x8   4      OPC=movswl_r32_r16  
  rcll $0x1, %esi                    #  4     0xc   2      OPC=rcll_r32_one    
  rcll $0x1, %ebx                    #  5     0xe   2      OPC=rcll_r32_one    
  retq                               #  6     0x10  1      OPC=retq            
                                                                               
.size target, .-target
