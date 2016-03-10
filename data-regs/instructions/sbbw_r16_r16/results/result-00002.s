  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %cx, %rbp  #  1     0    4      OPC=movswq_r64_r16  
  notl %ebp         #  2     0x4  2      OPC=notl_r32        
  cmc               #  3     0x6  1      OPC=cmc             
  adcw %bp, %bx     #  4     0x7  3      OPC=adcw_r16_r16    
  cmc               #  5     0xa  1      OPC=cmc             
  retq              #  6     0xb  1      OPC=retq            
                                                             
.size target, .-target
