  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  setae %al         #  1     0     3      OPC=setae_r8        
  movq $0x20, %r13  #  2     0x3   10     OPC=movq_r64_imm64  
  movzwl %ax, %edx  #  3     0xd   3      OPC=movzwl_r32_r16  
  orl %r13d, %edx   #  4     0x10  3      OPC=orl_r32_r32     
  decb %al          #  5     0x13  2      OPC=decb_r8         
  rclw $0x1, %ax    #  6     0x15  3      OPC=rclw_r16_one    
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
