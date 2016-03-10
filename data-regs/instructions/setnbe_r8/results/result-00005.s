  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label   
  adcl %ebx, %ebx          #  2     0x5   2      OPC=adcl_r32_r32  
  callq .set_szp_for_ebx   #  3     0x7   5      OPC=callq_label   
  callq .read_zf_into_rbx  #  4     0xc   5      OPC=callq_label   
  retq                     #  5     0x11  1      OPC=retq          
                                                                   
.size target, .-target
