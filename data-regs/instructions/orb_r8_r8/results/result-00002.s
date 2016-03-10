  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP   Bytes  Opcode                
.target:               #        0     0      OPC=<label>           
  movsbl %cl, %r12d    #  1     0     4      OPC=movsbl_r32_r8     
  movsbw %bl, %bp      #  2     0x4   4      OPC=movsbw_r16_r8     
  orw %bp, %r12w       #  3     0x8   4      OPC=orw_r16_r16       
  cmovnbew %r12w, %bx  #  4     0xc   5      OPC=cmovnbew_r16_r16  
  retq                 #  5     0x11  1      OPC=retq              
                                                                   
.size target, .-target
