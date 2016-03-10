  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_of_into_rcx  #  1     0    5      OPC=callq_label   
  callq .read_sf_into_rbx  #  2     0x5  5      OPC=callq_label   
  xorl %ebx, %ecx          #  3     0xa  2      OPC=xorl_r32_r32  
  setnp %ah                #  4     0xc  3      OPC=setnp_rh      
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
