  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  cmovnzl %eax, %ebx  #  2     0x3  3      OPC=cmovnzl_r32_r32  
  adcb %ah, %cl       #  3     0x6  2      OPC=adcb_r8_rh       
  adcb %cl, %bl       #  4     0x8  2      OPC=adcb_r8_r8       
  retq                #  5     0xa  1      OPC=retq             
                                                                
.size target, .-target
