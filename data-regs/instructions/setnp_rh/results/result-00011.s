  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .clear_cf          #  1     0     5      OPC=callq_label   
  callq .read_pf_into_rbx  #  2     0x5   5      OPC=callq_label   
  adcl %ebx, %ebx          #  3     0xa   2      OPC=adcl_r32_r32  
  callq .read_pf_into_rcx  #  4     0xc   5      OPC=callq_label   
  movb %cl, %ah            #  5     0x11  2      OPC=movb_rh_r8    
  retq                     #  6     0x13  1      OPC=retq          
                                                                   
.size target, .-target
