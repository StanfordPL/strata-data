  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswq %bx, %r10   #  1     0     4      OPC=movswq_r64_r16  
  movslq %r10d, %r9  #  2     0x4   3      OPC=movslq_r64_r32  
  xaddw %r9w, %r10w  #  3     0x7   5      OPC=xaddw_r16_r16   
  addw %r9w, %bx     #  4     0xc   4      OPC=addw_r16_r16    
  retq               #  5     0x10  1      OPC=retq            
                                                               
.size target, .-target
