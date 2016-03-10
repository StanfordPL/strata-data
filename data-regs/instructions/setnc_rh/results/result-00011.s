  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label   
  shll $0x1, %ecx          #  2     0x5   2      OPC=shll_r32_one  
  callq .read_pf_into_rbx  #  3     0x7   5      OPC=callq_label   
  rolw $0x1, %bx           #  4     0xc   3      OPC=rolw_r16_one  
  callq .set_szp_for_ebx   #  5     0xf   5      OPC=callq_label   
  setnp %ah                #  6     0x14  3      OPC=setnp_rh      
  retq                     #  7     0x17  1      OPC=retq          
                                                                   
.size target, .-target
