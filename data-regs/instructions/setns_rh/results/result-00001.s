  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rax  #  1     0     10     OPC=movq_r64_imm64  
  rolb $0x1, %al    #  2     0xa   2      OPC=rolb_r8_one     
  rclq $0x1, %rax   #  3     0xc   3      OPC=rclq_r64_one    
  setnl %ah         #  4     0xf   3      OPC=setnl_rh        
  decw %ax          #  5     0x12  3      OPC=decw_r16        
  retq              #  6     0x15  1      OPC=retq            
                                                              
.size target, .-target
