  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32    
  decw %ax          #  2     0x2  3      OPC=decw_r16        
  movswl %ax, %edx  #  3     0x5  3      OPC=movswl_r32_r16  
  xaddl %edx, %ebx  #  4     0x8  3      OPC=xaddl_r32_r32   
  retq              #  5     0xb  1      OPC=retq            
                                                             
.size target, .-target
