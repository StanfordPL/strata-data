  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovngew %cx, %bx  #  1     0    4      OPC=cmovngew_r16_r16  
  xorl %eax, %eax    #  2     0x4  2      OPC=xorl_r32_r32      
  cmovzw %bx, %bx    #  3     0x6  4      OPC=cmovzw_r16_r16    
  retq               #  4     0xa  1      OPC=retq              
                                                                
.size target, .-target
