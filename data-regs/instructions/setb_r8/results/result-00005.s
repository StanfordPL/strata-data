  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label   
  callq .set_cf            #  2     0x5   5      OPC=callq_label   
  adcl %ebx, %ebx          #  3     0xa   2      OPC=adcl_r32_r32  
  callq .read_pf_into_rbx  #  4     0xc   5      OPC=callq_label   
  retq                     #  5     0x11  1      OPC=retq          
                                                                   
.size target, .-target
