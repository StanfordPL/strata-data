  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32   
  movsbq %al, %r13  #  2     0x2  4      OPC=movsbq_r64_r8  
  xaddw %r13w, %bx  #  3     0x6  5      OPC=xaddw_r16_r16  
  shlw $0x1, %bx    #  4     0xb  3      OPC=shlw_r16_one   
  retq              #  5     0xe  1      OPC=retq           
                                                            
.size target, .-target
