  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movb %bl, %bh      #  1     0     2      OPC=movb_rh_r8       
  movzwl %bx, %r9d   #  2     0x2   4      OPC=movzwl_r32_r16   
  sarq $0x1, %r9     #  3     0x6   3      OPC=sarq_r64_one     
  cmovnsw %r9w, %bx  #  4     0x9   5      OPC=cmovnsw_r16_r16  
  rclb $0x1, %r9b    #  5     0xe   3      OPC=rclb_r8_one      
  retq               #  6     0x11  1      OPC=retq             
                                                                
.size target, .-target
