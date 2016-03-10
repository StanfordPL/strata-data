  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbw %ah, %si   #  1     0    4      OPC=movzbw_r16_rh  
  testb %sil, %sil  #  2     0x4  3      OPC=testb_r8_r8    
  sbbb %bl, %ah     #  3     0x7  2      OPC=sbbb_rh_r8     
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
