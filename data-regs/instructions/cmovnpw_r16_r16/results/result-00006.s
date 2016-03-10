  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setpe %r9b        #  1     0    4      OPC=setpe_r8         
  shlb $0x1, %r9b   #  2     0x4  3      OPC=shlb_r8_one      
  cmovpew %cx, %bx  #  3     0x7  4      OPC=cmovpew_r16_r16  
  retq              #  4     0xb  1      OPC=retq             
                                                              
.size target, .-target
