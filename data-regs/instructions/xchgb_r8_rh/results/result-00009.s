  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  xaddb %ah, %bl    #  2     0x3  3      OPC=xaddb_r8_rh    
  movw %dx, %bx     #  3     0x6  3      OPC=movw_r16_r16   
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
