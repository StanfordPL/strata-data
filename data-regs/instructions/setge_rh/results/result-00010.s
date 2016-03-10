  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setl %bl        #  1     0    3      OPC=setl_r8      
  shlb $0x1, %bl  #  2     0x3  2      OPC=shlb_r8_one  
  setle %ah       #  3     0x5  3      OPC=setle_rh     
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
