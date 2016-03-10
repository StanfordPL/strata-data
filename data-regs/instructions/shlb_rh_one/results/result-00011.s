  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  shlb $0x1, %dl    #  2     0x3  2      OPC=shlb_r8_one    
  setnp %al         #  3     0x5  3      OPC=setnp_r8       
  addw %ax, %ax     #  4     0x8  3      OPC=addw_r16_r16   
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
