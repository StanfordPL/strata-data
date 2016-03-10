  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movzwl %cx, %r10d  #  1     0     4      OPC=movzwl_r32_r16  
  movswl %cx, %esi   #  2     0x4   3      OPC=movswl_r32_r16  
  xorw %bx, %r10w    #  3     0x7   4      OPC=xorw_r16_r16    
  roll $0x1, %r10d   #  4     0xb   3      OPC=roll_r32_one    
  sbbw %si, %bx      #  5     0xe   3      OPC=sbbw_r16_r16    
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
