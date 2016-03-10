  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xchgw %bx, %cx    #  1     0    3      OPC=xchgw_r16_r16   
  movswl %cx, %esp  #  2     0x3  3      OPC=movswl_r32_r16  
  cmovbw %sp, %bx   #  3     0x6  4      OPC=cmovbw_r16_r16  
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
