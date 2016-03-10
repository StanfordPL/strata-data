  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setnge %r11b             #  1     0     4      OPC=setnge_r8     
  callq .read_of_into_rcx  #  2     0x4   5      OPC=callq_label   
  shlb $0x1, %r11b         #  3     0x9   3      OPC=shlb_r8_one   
  rolq $0x1, %rcx          #  4     0xc   3      OPC=rolq_r64_one  
  setle %ah                #  5     0xf   3      OPC=setle_rh      
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
