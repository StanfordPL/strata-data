  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movb %cl, %ah       #  1     0     2      OPC=movb_rh_r8       
  movq $0x80, %r15    #  2     0x2   10     OPC=movq_r64_imm64   
  popcntq %r15, %r11  #  3     0xc   5      OPC=popcntq_r64_r64  
  andb %ah, %bl       #  4     0x11  2      OPC=andb_r8_rh       
  rclb $0x1, %r11b    #  5     0x13  3      OPC=rclb_r8_one      
  retq                #  6     0x16  1      OPC=retq             
                                                                 
.size target, .-target
