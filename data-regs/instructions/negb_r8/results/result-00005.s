  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.target:                 #        0     0      OPC=<label>        
  xorq %rax, %rax        #  1     0     3      OPC=xorq_r64_r64   
  movb %bl, %ah          #  2     0x3   2      OPC=movb_rh_r8     
  decw %ax               #  3     0x5   3      OPC=decw_r16       
  notb %ah               #  4     0x8   2      OPC=notb_rh        
  adcb %ah, %al          #  5     0xa   2      OPC=adcb_r8_rh     
  movsbl %ah, %ebx       #  6     0xc   3      OPC=movsbl_r32_rh  
  callq .set_szp_for_bl  #  7     0xf   5      OPC=callq_label    
  retq                   #  8     0x14  1      OPC=retq           
                                                                  
.size target, .-target
