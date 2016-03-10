  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  clc                      #  2     0x5  1      OPC=clc           
  adcl %ecx, %ecx          #  3     0x6  2      OPC=adcl_r32_r32  
  callq .read_pf_into_rbx  #  4     0x8  5      OPC=callq_label   
  movb %bl, %ah            #  5     0xd  2      OPC=movb_rh_r8    
  retq                     #  6     0xf  1      OPC=retq          
                                                                  
.size target, .-target
