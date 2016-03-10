  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %ecx  #  1     0    3      OPC=movzbl_r32_rh  
  addb %bl, %ah     #  2     0x3  2      OPC=addb_rh_r8     
  movzbw %cl, %bx   #  3     0x5  4      OPC=movzbw_r16_r8  
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
