  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %r8d  #  1     0    4      OPC=movsbl_r32_r8  
  movsbw %ah, %bx   #  2     0x4  4      OPC=movsbw_r16_rh  
  xorw %r8w, %bx    #  3     0x8  4      OPC=xorw_r16_r16   
  clc               #  4     0xc  1      OPC=clc            
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
