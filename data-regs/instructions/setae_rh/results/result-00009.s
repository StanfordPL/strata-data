  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setnb %ah         #  1     0    3      OPC=setnb_rh       
  movzbl %ah, %eax  #  2     0x3  3      OPC=movzbl_r32_rh  
  xorb %al, %ah     #  3     0x6  2      OPC=xorb_rh_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
