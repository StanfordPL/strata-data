  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x0, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  xchgw %bx, %bx   #  2     0xa  3      OPC=xchgw_r16_r16   
  rclb $0x1, %bl   #  3     0xd  2      OPC=rclb_r8_one     
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
