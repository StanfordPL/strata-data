  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setnae %bh      #  1     0    3      OPC=setnae_rh    
  xchgb %bl, %bh  #  2     0x3  2      OPC=xchgb_rh_r8  
  negb %bl        #  3     0x5  2      OPC=negb_r8      
  sbbb %bh, %ah   #  4     0x7  2      OPC=sbbb_rh_rh   
  retq            #  5     0x9  1      OPC=retq         
                                                        
.size target, .-target
