  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setns %dl         #  1     0    3      OPC=setns_r8         
  movzbq %dl, %rdi  #  2     0x3  4      OPC=movzbq_r64_r8    
  salq $0x1, %rdi   #  3     0x7  3      OPC=salq_r64_one     
  cmovnzw %cx, %bx  #  4     0xa  4      OPC=cmovnzw_r16_r16  
  retq              #  5     0xe  1      OPC=retq             
                                                              
.size target, .-target
