  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movzbl %ah, %edi  #  1     0     3      OPC=movzbl_r32_rh  
  callq .set_cf     #  2     0x3   5      OPC=callq_label    
  setae %al         #  3     0x8   3      OPC=setae_r8       
  rolw $0x1, %ax    #  4     0xb   3      OPC=rolw_r16_one   
  shlb $0x1, %dil   #  5     0xe   3      OPC=shlb_r8_one    
  retq              #  6     0x11  1      OPC=retq           
                                                             
.size target, .-target
