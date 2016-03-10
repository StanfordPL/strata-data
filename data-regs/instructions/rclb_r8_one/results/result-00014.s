  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %r8d  #  1     0    4      OPC=movsbl_r32_r8  
  rcll $0x1, %r8d   #  2     0x4  3      OPC=rcll_r32_one   
  shlb $0x1, %bl    #  3     0x7  2      OPC=shlb_r8_one    
  movb %r8b, %bl    #  4     0x9  3      OPC=movb_r8_r8     
  retq              #  5     0xc  1      OPC=retq           
                                                            
.size target, .-target
