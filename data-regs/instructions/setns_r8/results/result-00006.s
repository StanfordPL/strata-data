  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label    
  rolb $0x1, %bl           #  2     0x5   2      OPC=rolb_r8_one    
  movzbl %bl, %ebp         #  3     0x7   3      OPC=movzbl_r32_r8  
  shll $0x1, %ebp          #  4     0xa   2      OPC=shll_r32_one   
  callq .read_pf_into_rbx  #  5     0xc   5      OPC=callq_label    
  retq                     #  6     0x11  1      OPC=retq           
                                                                    
.size target, .-target
