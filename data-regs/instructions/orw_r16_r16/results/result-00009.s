  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movsbq %bl, %rbp  #  1     0     4      OPC=movsbq_r64_r8    
  movswl %cx, %eax  #  2     0x4   3      OPC=movswl_r32_r16   
  shll $0x1, %ebp   #  3     0x7   2      OPC=shll_r32_one     
  movswq %bx, %rdx  #  4     0x9   4      OPC=movswq_r64_r16   
  setns %bh         #  5     0xd   4      OPC=setns_rh         
  orl %eax, %edx    #  6     0x11  2      OPC=orl_r32_r32      
  cmovaew %dx, %bx  #  7     0x13  4      OPC=cmovaew_r16_r16  
  retq              #  8     0x17  1      OPC=retq             
                                                               
.size target, .-target
