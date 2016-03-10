  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setnae %dh      #  1     0    4      OPC=setnae_rh    
  xchgb %dh, %cl  #  2     0x4  2      OPC=xchgb_r8_rh  
  sbbb %dh, %bl   #  3     0x6  2      OPC=sbbb_r8_rh   
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
