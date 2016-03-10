  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rbp  #  1     0     10     OPC=movq_r64_imm64  
  setnbe %al        #  2     0xa   3      OPC=setnbe_r8       
  rclb $0x1, %bpl   #  3     0xd   3      OPC=rclb_r8_one     
  shlw $0x1, %bp    #  4     0x10  3      OPC=shlw_r16_one    
  setnge %ah        #  5     0x13  3      OPC=setnge_rh       
  xorb %al, %ah     #  6     0x16  2      OPC=xorb_rh_r8      
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
