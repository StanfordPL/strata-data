  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32   
  movsbq %bl, %r13  #  2     0x2  4      OPC=movsbq_r64_r8  
  rclb $0x1, %bl    #  3     0x6  2      OPC=rclb_r8_one    
  shlb $0x1, %r13b  #  4     0x8  3      OPC=shlb_r8_one    
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
