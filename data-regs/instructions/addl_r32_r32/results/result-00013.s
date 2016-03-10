  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorw %ax, %ax     #  1     0    3      OPC=xorw_r16_r16   
  rclb $0x1, %ah    #  2     0x3  2      OPC=rclb_rh_one    
  xorb %ah, %ch     #  3     0x5  2      OPC=xorb_rh_rh     
  xaddl %ecx, %ebx  #  4     0x7  3      OPC=xaddl_r32_r32  
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
