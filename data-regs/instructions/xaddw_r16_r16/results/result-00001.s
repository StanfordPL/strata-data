  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswl %cx, %esi   #  1     0    3      OPC=movswl_r32_r16  
  addw %bx, %si      #  2     0x3  3      OPC=addw_r16_r16    
  movslq %esi, %rcx  #  3     0x6  3      OPC=movslq_r64_r32  
  xchgw %cx, %bx     #  4     0x9  3      OPC=xchgw_r16_r16   
  retq               #  5     0xc  1      OPC=retq            
                                                              
.size target, .-target
