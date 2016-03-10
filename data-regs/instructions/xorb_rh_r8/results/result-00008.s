  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bl, %ecx  #  1     0    3      OPC=movzbl_r32_r8  
  xorb %ah, %cl     #  2     0x3  2      OPC=xorb_r8_rh     
  movb %cl, %ah     #  3     0x5  2      OPC=movb_rh_r8     
  rolw $0x1, %cx    #  4     0x7  3      OPC=rolw_r16_one   
  callq .clear_of   #  5     0xa  5      OPC=callq_label    
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
