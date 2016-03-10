  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label   
  movq %rcx, %rdi          #  2     0x5   3      OPC=movq_r64_r64  
  callq .read_of_into_rcx  #  3     0x8   5      OPC=callq_label   
  xorl %edi, %ecx          #  4     0xd   2      OPC=xorl_r32_r32  
  setnz %ah                #  5     0xf   3      OPC=setnz_rh      
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
