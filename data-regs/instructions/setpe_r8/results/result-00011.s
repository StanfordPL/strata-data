  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label   
  xorl %r11d, %r11d        #  2     0x5   3      OPC=xorl_r32_r32  
  rcll $0x1, %ebx          #  3     0x8   2      OPC=rcll_r32_one  
  negb %bl                 #  4     0xa   2      OPC=negb_r8       
  callq .read_cf_into_rbx  #  5     0xc   5      OPC=callq_label   
  retq                     #  6     0x11  1      OPC=retq          
                                                                   
.size target, .-target
