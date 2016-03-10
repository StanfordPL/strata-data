  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .set_cf            #  1     0     5      OPC=callq_label    
  callq .read_cf_into_rcx  #  2     0x5   5      OPC=callq_label    
  xorb %ah, %bl            #  3     0xa   2      OPC=xorb_r8_rh     
  setb %al                 #  4     0xc   3      OPC=setb_r8        
  movb %bl, %bh            #  5     0xf   2      OPC=movb_rh_r8     
  callq .clear_cf          #  6     0x11  5      OPC=callq_label    
  rclw $0x1, %cx           #  7     0x16  3      OPC=rclw_r16_one   
  xchgw %ax, %bx           #  8     0x19  3      OPC=xchgw_r16_r16  
  retq                     #  9     0x1c  1      OPC=retq           
                                                                    
.size target, .-target
