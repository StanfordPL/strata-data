  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setle %dh         #  1     0    3      OPC=setle_rh       
  movsbl %dh, %ecx  #  2     0x3  3      OPC=movsbl_r32_rh  
  movzbl %cl, %ebx  #  3     0x6  3      OPC=movzbl_r32_r8  
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
