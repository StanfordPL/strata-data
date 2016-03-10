  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setns %al         #  1     0    3      OPC=setns_r8         
  shlb $0x1, %al    #  2     0x3  2      OPC=shlb_r8_one      
  cmovpew %cx, %bx  #  3     0x5  4      OPC=cmovpew_r16_r16  
  retq              #  4     0x9  1      OPC=retq             
                                                              
.size target, .-target
