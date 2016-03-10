  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovngw %cx, %bx    #  1     0    4      OPC=cmovngw_r16_r16  
  movzbl %cl, %eax    #  2     0x4  3      OPC=movzbl_r32_r8    
  popcntl %eax, %edx  #  3     0x7  4      OPC=popcntl_r32_r32  
  cmovpew %ax, %bx    #  4     0xb  4      OPC=cmovpew_r16_r16  
  retq                #  5     0xf  1      OPC=retq             
                                                                
.size target, .-target
