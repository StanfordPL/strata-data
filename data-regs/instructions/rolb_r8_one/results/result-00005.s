  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %bl, %rdx                   #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x4   5      OPC=callq_label    
  callq .move_032_016_edx_r10w_r11w  #  3     0x9   5      OPC=callq_label    
  callq .move_032_064_r10d_r11d_rbx  #  4     0xe   5      OPC=callq_label    
  rolw $0x1, %dx                     #  5     0x13  3      OPC=rolw_r16_one   
  rcll $0x1, %ebx                    #  6     0x16  2      OPC=rcll_r32_one   
  shlb $0x1, %r10b                   #  7     0x18  3      OPC=shlb_r8_one    
  retq                               #  8     0x1b  1      OPC=retq           
                                                                              
.size target, .-target
