  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  movzbl %ah, %ecx       #  1     0    3      OPC=movzbl_r32_rh  
  clc                    #  2     0x3  1      OPC=clc            
  setnb %bh              #  3     0x4  3      OPC=setnb_rh       
  xorw %cx, %bx          #  4     0x7  3      OPC=xorw_r16_r16   
  callq .set_szp_for_bl  #  5     0xa  5      OPC=callq_label    
  retq                   #  6     0xf  1      OPC=retq           
                                                                 
.size target, .-target
