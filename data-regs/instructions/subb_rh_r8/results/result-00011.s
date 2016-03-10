  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  xorb %al, %al            #  1     0    2      OPC=xorb_r8_r8         
  cwtl                     #  2     0x2  1      OPC=cwtl               
  movzbq %bl, %rcx         #  3     0x3  4      OPC=movzbq_r64_r8      
  andnl %eax, %eax, %r10d  #  4     0x7  5      OPC=andnl_r32_r32_r32  
  sbbb %cl, %ah            #  5     0xc  2      OPC=sbbb_rh_r8         
  retq                     #  6     0xe  1      OPC=retq               
                                                                       
.size target, .-target
