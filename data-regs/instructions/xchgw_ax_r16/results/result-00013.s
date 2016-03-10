  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %ax, %r9d  #  1     0    4      OPC=movswl_r32_r16  
  xchgw %r9w, %bx   #  2     0x4  4      OPC=xchgw_r16_r16   
  movw %r9w, %ax    #  3     0x8  4      OPC=movw_r16_r16    
  retq              #  4     0xc  1      OPC=retq            
                                                             
.size target, .-target
