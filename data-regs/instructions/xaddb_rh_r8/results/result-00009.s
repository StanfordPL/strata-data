  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movb %ah, %ch     #  1     0     2      OPC=movb_rh_rh     
  movb %bl, %cl     #  2     0x2   2      OPC=movb_r8_r8     
  movw %cx, %dx     #  3     0x4   3      OPC=movw_r16_r16   
  movzbl %ch, %ebx  #  4     0x7   3      OPC=movzbl_r32_rh  
  xaddb %dh, %cl    #  5     0xa   3      OPC=xaddb_r8_rh    
  xaddb %ah, %cl    #  6     0xd   3      OPC=xaddb_r8_rh    
  addb %bl, %dh     #  7     0x10  2      OPC=addb_rh_r8     
  retq              #  8     0x12  1      OPC=retq           
                                                             
.size target, .-target
