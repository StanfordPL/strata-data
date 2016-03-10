  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorw %ax, %ax   #  1     0    3      OPC=xorw_r16_r16  
  notw %ax        #  2     0x3  3      OPC=notw_r16      
  shlb $0x1, %ah  #  3     0x6  2      OPC=shlb_rh_one   
  retq            #  4     0x8  1      OPC=retq          
                                                         
.size target, .-target
