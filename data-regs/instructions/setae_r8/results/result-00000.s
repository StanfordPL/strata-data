  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label   
  callq .clear_of          #  2     0x5   5      OPC=callq_label   
  callq .read_of_into_rbx  #  3     0xa   5      OPC=callq_label   
  adcl %ebx, %ecx          #  4     0xf   2      OPC=adcl_r32_r32  
  callq .read_pf_into_rcx  #  5     0x11  5      OPC=callq_label   
  adcb %cl, %bl            #  6     0x16  2      OPC=adcb_r8_r8    
  retq                     #  7     0x18  1      OPC=retq          
                                                                   
.size target, .-target
