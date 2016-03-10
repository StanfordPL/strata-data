  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .clear_pf          #  1     0     5      OPC=callq_label    
  movzbl %bl, %edi         #  2     0x5   3      OPC=movzbl_r32_r8  
  movsbl %cl, %r9d         #  3     0x8   4      OPC=movsbl_r32_r8  
  callq .read_pf_into_rbx  #  4     0xc   5      OPC=callq_label    
  xorl %edi, %r9d          #  5     0x11  3      OPC=xorl_r32_r32   
  adcb %r9b, %bl           #  6     0x14  3      OPC=adcb_r8_r8     
  retq                     #  7     0x17  1      OPC=retq           
                                                                    
.size target, .-target
