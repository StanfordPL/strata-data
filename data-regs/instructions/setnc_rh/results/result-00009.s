  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  setae %r9b       #  1     0    4      OPC=setae_r8     
  shlb $0x1, %r9b  #  2     0x4  3      OPC=shlb_r8_one  
  setnz %ah        #  3     0x7  3      OPC=setnz_rh     
  retq             #  4     0xa  1      OPC=retq         
                                                         
.size target, .-target
