  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %bx, %ebp  #  1     0    3      OPC=movswl_r32_r16  
  xorq %rax, %rax   #  2     0x3  3      OPC=xorq_r64_r64    
  salw $0x1, %ax    #  3     0x6  3      OPC=salw_r16_one    
  sbbw %cx, %bp     #  4     0x9  3      OPC=sbbw_r16_r16    
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
