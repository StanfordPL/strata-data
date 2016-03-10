  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  setnle %r11b      #  1     0    4      OPC=setnle_r8    
  shlb $0x1, %r11b  #  2     0x4  3      OPC=shlb_r8_one  
  setne %ah         #  3     0x7  3      OPC=setne_rh     
  retq              #  4     0xa  1      OPC=retq         
                                                          
.size target, .-target
