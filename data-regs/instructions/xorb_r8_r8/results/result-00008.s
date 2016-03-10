  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  movzbl %cl, %r11d   #  1     0     4      OPC=movzbl_r32_r8  
  movsbl %bl, %ebx    #  2     0x4   3      OPC=movsbl_r32_r8  
  xorw %r11w, %bx     #  3     0x7   4      OPC=xorw_r16_r16   
  movq %rbx, %r11     #  4     0xb   3      OPC=movq_r64_r64   
  setc %r13b          #  5     0xe   4      OPC=setc_r8        
  xaddb %r13b, %r11b  #  6     0x12  4      OPC=xaddb_r8_r8    
  retq                #  7     0x16  1      OPC=retq           
                                                               
.size target, .-target
