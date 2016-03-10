  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bh, %ecx  #  1     0    3      OPC=movzbl_r32_rh  
  xchgl %ecx, %ecx  #  2     0x3  2      OPC=xchgl_r32_r32  
  addb %cl, %ah     #  3     0x5  2      OPC=addb_rh_r8     
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
