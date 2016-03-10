  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswl %bx, %r14d  #  1     0     4      OPC=movswl_r32_r16  
  callq .clear_cf    #  2     0x4   5      OPC=callq_label     
  adcw %r14w, %cx    #  3     0x9   4      OPC=adcw_r16_r16    
  xchgw %bx, %cx     #  4     0xd   3      OPC=xchgw_r16_r16   
  retq               #  5     0x10  1      OPC=retq            
                                                               
.size target, .-target
