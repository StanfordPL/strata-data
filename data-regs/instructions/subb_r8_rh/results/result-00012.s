  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  testb %bl, %ah  #  1     0    2      OPC=testb_rh_r8  
  sbbb %ah, %bl   #  2     0x2  2      OPC=sbbb_r8_rh   
  retq            #  3     0x4  1      OPC=retq         
                                                        
.size target, .-target
