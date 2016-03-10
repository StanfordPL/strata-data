  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswl %cx, %r10d  #  1     0     4      OPC=movswl_r32_r16  
  movswl %bx, %r8d   #  2     0x4   4      OPC=movswl_r32_r16  
  andl %r8d, %r8d    #  3     0x8   3      OPC=andl_r32_r32    
  testl %r10d, %r8d  #  4     0xb   3      OPC=testl_r32_r32   
  rclq $0x1, %r8     #  5     0xe   3      OPC=rclq_r64_one    
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
