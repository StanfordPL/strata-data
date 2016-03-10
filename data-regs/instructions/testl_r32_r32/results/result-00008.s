  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnl %ecx, %ebx, %edx  #  1     0    5      OPC=andnl_r32_r32_r32  
  xorl %edx, %ecx         #  2     0x5  2      OPC=xorl_r32_r32       
  rclq $0x1, %rdx         #  3     0x7  3      OPC=rclq_r64_one       
  retq                    #  4     0xa  1      OPC=retq               
                                                                      
.size target, .-target
