  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  shlb $0x1, %al    #  1     0     2      OPC=shlb_r8_one    
  rclw $0x1, %ax    #  2     0x2   3      OPC=rclw_r16_one   
  setnb %bh         #  3     0x5   3      OPC=setnb_rh       
  movzbl %bh, %edx  #  4     0x8   3      OPC=movzbl_r32_rh  
  decw %dx          #  5     0xb   3      OPC=decw_r16       
  rolw $0x1, %dx    #  6     0xe   3      OPC=rolw_r16_one   
  retq              #  7     0x11  1      OPC=retq           
                                                             
.size target, .-target
