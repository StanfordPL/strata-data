  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzwq %cx, %rax  #  1     0    4      OPC=movzwq_r64_r16  
  notl %eax         #  2     0x4  2      OPC=notl_r32        
  xchgw %ax, %cx    #  3     0x6  3      OPC=xchgw_r16_r16   
  stc               #  4     0x9  1      OPC=stc             
  adcw %cx, %bx     #  5     0xa  3      OPC=adcw_r16_r16    
  cmc               #  6     0xd  1      OPC=cmc             
  retq              #  7     0xe  1      OPC=retq            
                                                             
.size target, .-target
